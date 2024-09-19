{
  users.users.richard = {
    isNormalUser = true;
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAL7PtHDX1NnXorwK1SEFvi90GiZdR9/AEBUv5xVttMhgy4hO5qiI1RDrrI0DMAWQ746XesIaH1j4hu4XXj5w9o4m+JprGmad85l4lq41FwX72Ztn26cLi3YTj+eYcPNaSwrvTbVuqY/g2Wa9an8l3D+0r+nr+MFtLLQD485JCOiMQO6RjcahhLxb50draiqJUvtmBlyUBopuE6SDgcyETin91lh6BOLXzJuocHVELVcZ/8MwJOgzNNRVl7ZWR0BRPf92vS6aYBeF88sW9axkxKkX5VrgyTZVUhu13oRs3Zz29Wcr9YtkbFcpmaGzP2hGpoEW4HUaXml9mu3mWsO6+WaOiNciOE8nojB0g4w6hsE2j5pI3NsR6jm2OArGBqugHcNjvk4oDn7yhCalFvpudd6PoB/vtB5TjSYOh/oMDDtrOSwxVfWc0twRcLSdD3OWtxx6IlXwqRvn61I+x1aG1YEkRDsl6ndHMRbt3SFAFsK9Q4mRQYPfDO60/o9drWY8= richard@ArchLaptop"
    ];
    extraGroups = [ "wheel" ];
  };
}
