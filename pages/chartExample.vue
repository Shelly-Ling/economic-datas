<template>
  <div class="small">
    <chart-example :chart-data="datacollection" />
  </div>
</template>

<script>
import ChartExample from '../components/data/ChartExample.js'

export default {
  components: {
    ChartExample
  },
  data () {
    return {
      datacollection: {},
      optionsData: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    }
  },
  mounted () {
    this.fillData()
  },
  methods: {
    fillData () {
      this.datacollection = {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange', 'New', 'hi'],
        datasets: [{
          label: 'My First Dataset',
          data: [12, 19, 3, 5, 2, 3, 5, 3, 5],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(255, 205, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(255, 99, 132, 0.2)'
          ],
          borderColor: [
            'rgb(255, 99, 132)',
            'rgb(255, 159, 64)',
            'rgb(255, 205, 86)',
            'rgb(75, 192, 192)',
            'rgb(54, 162, 235)',
            'rgb(153, 102, 255)',
            'rgb(54, 162, 235)',
            'rgb(255, 99, 132)'
          ],
          borderWidth: 3
        }]
      }
    }
  }
}
</script>

<style>
  .small {
    max-width: 600px;
    margin:  150px auto;
  }
</style>
