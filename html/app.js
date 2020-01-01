const { createElement, render, Component } = preact;
const h = createElement;


class App extends Component {
    constructor(props) {
        super(props);
        this.state = {
            redeem: 1
        };
    }

    componentDidMount() {

    }

    inputChange(e) {
        const value = e.target.value;
        this.setState({ redeem: value });
    }

    submit() {
        CallEvent('Submit', this.state.redeem);
    }

    cancel() {
        CallEvent('Cancel');
    }

    render() {
        return h(
            'div',
            { class: 'atmPage' },
            h('div', { class: 'title' }, 'Welcome to the modal'),
            h(
                'p',
                {},
                `This is a description.`
            ),
            h(rangeInput, {
                state: this.state,
                inputChange: this.inputChange.bind(this)
            }),
            h(
                'div',
                { class: 'redeemTitle' },
                `Redeeming: ${this.state.redeem} Points`
            ),
            h(
                'button',
                { class: 'submit', onclick: this.submit.bind(this) },
                `Submit`
            ),
            h(
                'button',
                { class: 'cancel', onclick: this.cancel.bind(this) },
                `Cancel`
            )
        );
    }
}

const rangeInput = ({ state, inputChange }) => {
    return h('input', {
        type: 'range',
        value: state.redeem,
        min: 1,
        max: 5,
        oninput: inputChange.bind(this)
    });
};

render(h(App), document.querySelector('#render'));
