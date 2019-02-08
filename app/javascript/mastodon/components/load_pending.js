import React from 'react';
import { FormattedMessage } from 'react-intl';
import PropTypes from 'prop-types';

export default class LoadPending extends React.PureComponent {

  static propTypes = {
    onClick: PropTypes.func,
    count: PropTypes.number,
  }

  render() {
    const { count } = this.props;

    return (
      <button className='load-more load-gap' onClick={this.props.onClick}>
        <FormattedMessage id='status.load_pending' defaultMessage='{count, plural, one {# new toot} other {# new toots}}' values={{ count }} />
      </button>
    );
  }

}
