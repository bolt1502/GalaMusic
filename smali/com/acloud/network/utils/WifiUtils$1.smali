.class Lcom/acloud/network/utils/WifiUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/network/utils/WifiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/network/utils/WifiUtils;


# direct methods
.method constructor <init>(Lcom/acloud/network/utils/WifiUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/network/utils/WifiUtils$1;->this$0:Lcom/acloud/network/utils/WifiUtils;

    .line 113
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    const-string v5, "wifi_state"

    const/16 v6, 0xe

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 120
    .local v4, "state":I
    packed-switch v4, :pswitch_data_0

    .line 169
    .end local v4    # "state":I
    :cond_0
    :pswitch_0
    return-void

    .line 122
    .restart local v4    # "state":I
    :pswitch_1
    iget-object v5, p0, Lcom/acloud/network/utils/WifiUtils$1;->this$0:Lcom/acloud/network/utils/WifiUtils;

    # getter for: Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;
    invoke-static {v5}, Lcom/acloud/network/utils/WifiUtils;->access$0(Lcom/acloud/network/utils/WifiUtils;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;

    .line 123
    .local v1, "callback":Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;
    invoke-interface {v1}, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;->onWifiApOpen()V

    goto :goto_0

    .line 127
    .end local v1    # "callback":Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;
    :pswitch_2
    iget-object v5, p0, Lcom/acloud/network/utils/WifiUtils$1;->this$0:Lcom/acloud/network/utils/WifiUtils;

    # getter for: Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;
    invoke-static {v5}, Lcom/acloud/network/utils/WifiUtils;->access$0(Lcom/acloud/network/utils/WifiUtils;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;

    .line 128
    .restart local v1    # "callback":Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;
    invoke-interface {v1}, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;->onWifiDisable()V

    goto :goto_1

    .line 135
    .end local v1    # "callback":Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;
    .end local v4    # "state":I
    :cond_1
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 154
    .local v3, "parcelableExtra":Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 155
    check-cast v2, Landroid/net/NetworkInfo;

    .line 156
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 157
    .local v4, "state":Landroid/net/NetworkInfo$State;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "state:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 158
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 159
    iget-object v5, p0, Lcom/acloud/network/utils/WifiUtils$1;->this$0:Lcom/acloud/network/utils/WifiUtils;

    # getter for: Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;
    invoke-static {v5}, Lcom/acloud/network/utils/WifiUtils;->access$0(Lcom/acloud/network/utils/WifiUtils;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;

    .line 160
    .restart local v1    # "callback":Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;
    invoke-interface {v1}, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;->onWifiConnected()V

    goto :goto_2

    .line 162
    .end local v1    # "callback":Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;
    :cond_2
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 163
    iget-object v5, p0, Lcom/acloud/network/utils/WifiUtils$1;->this$0:Lcom/acloud/network/utils/WifiUtils;

    # getter for: Lcom/acloud/network/utils/WifiUtils;->mWifiStateCallback:Ljava/util/List;
    invoke-static {v5}, Lcom/acloud/network/utils/WifiUtils;->access$0(Lcom/acloud/network/utils/WifiUtils;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;

    .line 164
    .restart local v1    # "callback":Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;
    invoke-interface {v1}, Lcom/acloud/network/utils/WifiUtils$WifiStateCallback;->onWifiDisable()V

    goto :goto_3

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
