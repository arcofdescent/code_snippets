
import React, { Component } from 'react';

class Order extends Component {
    
    constructor() {
        super();
    }

    render() {

        return(
            <div>
              <table className="table">
                <thead>
                  <tr>
                    <th>ID</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>{this.props.details.id}</td>
                  </tr>
                </tbody>
              </table>
            </div>
        );
    }

    /*
    async getOrdrs() {
        //this.setState({ fetching: true });
        let data = await this.getOrdersAsync();
        console.log({data});
        //this.setState({result: data, fetching: false});
    }

    getOrdersAsync() {
        return new Promise((resolve, reject) => {
            let req = new Request('http://localhost:8081/', {
                method: 'GET',
            });

            fetch(req)
                .then(function(res) {
                    resolve(res.json());
                });
        });
    }
*/
}

export default Order;
