// this file has been modified by talwat

const command = "bash pecan/scripts/ws";
const refreshFrequency = 1000; // ms

const render = ({ output }) => <div class='screen'><div class='pecanworkspace' style={{ fontSize: '18px', paddingLeft: '10px', paddingRight: '10px' }}>{`${output}`}</div></div>;

export { command, refreshFrequency, render };
