<template>
  <div v-if="commentInfo.length > 0">
    <div class="detail-comment">
      <div class="detail-comment-title">
        用户评价
        <span>更多</span>
      </div>
      <div class="detail-user">
        <img :src="avatar">
        <div class="user-name">{{uname}}</div>
      </div>
      <div class="user-content">{{comment}}</div>
    </div>
  </div>
</template>

<script>
import {myLog} from "@/common/utils";

export default {
  name: "DetailComment",
  props: {
    commentInfo: {
      type: Object,
      default: {}
    }
  },
  data() {
    return {
    }
  },
  computed: {
    avatar: function () {
      return this.commentInfo[0].user.url
    },
    uname() {
      return this.commentInfo[0].user.name
    },
    comment() {
      return this.commentInfo[0].judge
    }
  },
}
</script>

<style scoped>
  .detail-comment {
    padding: 24px 22px;
    box-sizing: border-box;
  }
  .detail-comment-title {
    color: #333;
    font-size: 14px;
    border-bottom: 1px solid  rgba(0, 0, 0, 0.1);
    padding-bottom: 12px;
  }
  .detail-comment-title span {
    float: right;
  }
  .detail-user {
    display: flex;
    margin-top: 6px;
  }
  .user-name {
    line-height: 42px;
    margin-left: 6px;
    font-size: 14px;
  }
  .detail-user img{
    width: 42px;
    height: 42px;
    border-radius: 50%;
    line-height: 42px;
  }
  .user-content {
    text-indent: 2em;
    font-size: 12px;
    line-height: 1.5;
    margin-top: 6px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: normal;
  }
</style>
