import React from "react"
import PropTypes from 'prop-types'
import TeamHeader from './team_header'
import Table from '../common/table'

const Roster = (props) => {
  const team = props.team;
  const columns = [{value:'#'}, {value:'Name'}, {value:'Class'}]
  const data = props.roster.map((player, index) => (
      {
        'key':   player.id,
        '#':     {value: player.jersey_number},
        'Name':  {value: `${player.first_name} ${player.last_name}`,
                  url: `/players/${player.id}`,
                  sortValue: player.last_name},
        'Class': {value: player.klass_name,
                  sortValue: player.klass_id}
      }
    ));
  return (
    <div className="body-container roster-container team-container">
      <TeamHeader
        school={team.school}
        nickname={team.nickname}
      />
      <Table
        cols={columns}
        data={data}
        extra_classes="roster-table"
        filterable={true}
      />
    </div>
  );
}

Roster.propTypes = {
  roster: PropTypes.array
}

export default Roster