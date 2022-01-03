<template>
  <div class="profile-list-item">
    <div class="profile-icon"><slot name="icon"></slot> </div>
    <div class="profile-text"><slot name="text"></slot> </div>
  </div>
</template>

<script>
export default {
  name: "ProfileListItem"
}
</script>

<style>
  .profile-list-item {
    display: flex;
    padding: 0 20px;
    margin-top: 14px;

  }
  .profile-icon img {
    width: 22px;
  }
  .profile-text {
    line-height: 22px;
    margin-left: 12px;
    font-size: 13px;
    color: #333;
    border-bottom: 1px solid #e9e9e9;
    flex: 1;
  }
</style>