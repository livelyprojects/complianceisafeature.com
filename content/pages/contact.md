---
title: "Contact"
draft: false
hidden: true
---

### Contact Information

- **Email**: <span class="obfu echoromeoechonovemberalphalimaalphanovembergammalimaechoyankeeatgammamikealphaindigolimadotcharlieoscarmike">Loading...</span>
- **LinkedIn**: [Erena Langley](https://linkedin.com/in/erenalangley)

<script>
// this is designed to stop dumb web page scrapers scraping the email
// address and sending us spam

    var mymap = {
        zero: '0',
        one: '1',
        two: '2',
        three: '3',
        four: '4',
        five: '5',
        six: '6',
        seven: '7',
        eight: '8',
        nine: '9',
        at: '@',
        alpha: 'a',
        bravo: 'b',
        charlie: 'c',
        delta: 'd',
        echo: 'e',
        foxtrot: 'f',
        gamma: 'g',
        hotel: 'h',
        indigo: 'i',
        juliett: 'j',
        kilo: 'k',
        lima: 'l',
        mike: 'm',
        november: 'n',
        oscar: 'o',
        papa: 'p',
        quebec: 'q',
        romeo: 'r',
        sierra: 's',
        tango: 't',
        uniform: 'u',
        victor: 'v',
        whiskey: 'w',
        'x-ray': 'x',
        yankee: 'y',
        zulu: 'z',
        dot: '.',
        space: ' '
    };

    function decoder(string) {
        if (string.length == 0)
        return "";
        for (k in mymap)
        if (mymap.hasOwnProperty(k))
            if (string.indexOf(k) == 0) {
            return mymap[k] + decoder(string.substr(k.length));
            }
        return string.substr(0,1) + decoder(string.substr(1));
    }

    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('.obfu').forEach((e) => {
            e.innerHTML = "<span class='reveal'>CLICK TO SHOW</span>";
            e.addEventListener('click', function() {
                e.innerHTML = decoder(e.getAttribute('class').replace('obfu ', ''));
            });
        })
    });
</script>
<style>
        .reveal {
                    background: rgb(55, 143, 231);
                    color: white;
                    border-radius: 10px;
                    font-size: 8pt;
                    padding:5px;
                  }
</style>
