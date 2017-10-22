.class Lcom/acloud/PlayStateControlManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PlayStateControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/PlayStateControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/PlayStateControlManager;


# direct methods
.method constructor <init>(Lcom/acloud/PlayStateControlManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    .line 165
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "action":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "action:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 173
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isFlameout:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$0(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "xy.android.acc.on"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 395
    :cond_0
    return-void

    .line 177
    :cond_1
    const/4 v7, 0x0

    .line 178
    .local v7, "nPlayStatus":I
    const-string v10, "xy.voice.play"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 179
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 182
    const/4 v7, 0x2

    .line 189
    :cond_2
    :goto_1
    const-string v10, "xy.android.lock.screen"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 191
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$2(Lcom/acloud/PlayStateControlManager;Z)V

    .line 192
    const/4 v7, 0x2

    .line 363
    :cond_3
    :goto_2
    const/4 v10, 0x1

    if-ne v10, v7, :cond_21

    .line 364
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isInCall:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$8(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isBackoff:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$11(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isLockScreen:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$12(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isInBtCall:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$6(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 369
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_curPlayState:I
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$13(Lcom/acloud/PlayStateControlManager;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 373
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$14(Lcom/acloud/PlayStateControlManager;I)V

    .line 374
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 375
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    invoke-interface {v10}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->play()V

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 179
    .end local v4    # "i":I
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 180
    .local v3, "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->onPlay()V

    goto :goto_0

    .line 183
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_5
    const-string v10, "xy.voice.pause"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 184
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 187
    const/4 v7, 0x2

    goto/16 :goto_1

    .line 184
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 185
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->onPause()V

    goto :goto_4

    .line 193
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_7
    const-string v10, "xy.android.unlock.screen"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 195
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$2(Lcom/acloud/PlayStateControlManager;Z)V

    .line 196
    const/4 v7, 0x1

    .line 197
    goto/16 :goto_2

    :cond_8
    const-string v10, "xy.android.acc.on"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 199
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$3(Lcom/acloud/PlayStateControlManager;Z)V

    .line 200
    const/4 v7, 0x1

    .line 201
    goto/16 :goto_2

    :cond_9
    const-string v10, "xy.android.acc.off"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 203
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$3(Lcom/acloud/PlayStateControlManager;Z)V

    .line 204
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$4(Lcom/acloud/PlayStateControlManager;Z)V

    .line 206
    const/4 v7, 0x2

    .line 207
    goto/16 :goto_2

    :cond_a
    const-string v10, "xy.android.avin.come"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 209
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$5(Lcom/acloud/PlayStateControlManager;Z)V

    .line 210
    const/4 v7, 0x2

    .line 211
    goto/16 :goto_2

    :cond_b
    const-string v10, "xy.android.avin.leave"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 213
    const/4 v7, 0x1

    .line 214
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$5(Lcom/acloud/PlayStateControlManager;Z)V

    goto/16 :goto_2

    .line 215
    :cond_c
    const-string v10, "xy.xbtheadset.incallscreen"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 216
    const-string v10, "xy.xbtheadset.outgoing"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 217
    const-string v10, "xy.xbtheadset.ongoing"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 218
    const-string v10, "xy.xbtheadset.incoming"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 220
    :cond_d
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isInBtCall:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$6(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 223
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$7(Lcom/acloud/PlayStateControlManager;Z)V

    .line 224
    const/4 v7, 0x2

    .line 225
    goto/16 :goto_2

    :cond_e
    const-string v10, "xy.xbtheadset.outcallscreen"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 226
    const-string v10, "xy.xbtheadset.init"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 227
    const-string v10, "xy.xbtheadset.ready"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 228
    const-string v10, "xy.xbtheadset.connecting"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 229
    const-string v10, "xy.xbtheadset.connected"

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 231
    :cond_f
    const/4 v7, 0x1

    .line 232
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$7(Lcom/acloud/PlayStateControlManager;Z)V

    goto/16 :goto_2

    .line 233
    :cond_10
    const-string v10, "android.intent.action.PHONE_STATE"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 234
    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 236
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 237
    .local v0, "CALL_STATE":I
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 250
    :pswitch_0
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$4(Lcom/acloud/PlayStateControlManager;Z)V

    .line 251
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 239
    :pswitch_1
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$4(Lcom/acloud/PlayStateControlManager;Z)V

    .line 240
    const/4 v7, 0x2

    .line 241
    goto/16 :goto_2

    .line 243
    :pswitch_2
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isInCall:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$8(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 246
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$4(Lcom/acloud/PlayStateControlManager;Z)V

    .line 247
    const/4 v7, 0x2

    .line 248
    goto/16 :goto_2

    .line 254
    .end local v0    # "CALL_STATE":I
    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_11
    const-string v10, "xy.android.previousmedia"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 255
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    invoke-virtual {v10}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$9(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 256
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 257
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    invoke-interface {v10}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->prev()V

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 261
    .end local v4    # "i":I
    :cond_12
    const-string v10, "xy.android.seek_prev"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 262
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    invoke-virtual {v10}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$9(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 263
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mSeekStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$10(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/acloud/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 264
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mSeekStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$10(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$SeekStateInterface;

    .line 265
    .local v3, "callback":Lcom/acloud/PlayStateControlManager$SeekStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$SeekStateInterface;->seekPre()V

    goto :goto_6

    .line 267
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$SeekStateInterface;
    :cond_13
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/acloud/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 268
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 269
    .local v3, "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->prev()V

    goto :goto_7

    .line 274
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_14
    const-string v10, "xy.android.nextmedia"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 275
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    invoke-virtual {v10}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$9(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 276
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 277
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->next()V

    goto :goto_8

    .line 281
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_15
    const-string v10, "xy.android.seek_next"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 282
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    invoke-virtual {v10}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$9(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 283
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mSeekStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$10(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/acloud/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_16

    .line 284
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mSeekStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$10(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$SeekStateInterface;

    .line 285
    .local v3, "callback":Lcom/acloud/PlayStateControlManager$SeekStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$SeekStateInterface;->seekNext()V

    goto :goto_9

    .line 287
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$SeekStateInterface;
    :cond_16
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/acloud/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 288
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 289
    .local v3, "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->next()V

    goto :goto_a

    .line 294
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_17
    const-string v10, "xy.android.playpause"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 295
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    invoke-virtual {v10}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$9(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 296
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 297
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->playAndPause()V

    goto :goto_b

    .line 301
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_18
    const-string v10, "xy.android.forceplay"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 303
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    invoke-virtual {v10}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$9(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 304
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 305
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->steeringWheelPlay()V

    goto :goto_c

    .line 309
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_19
    const-string v10, "xy.android.forcepause"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 311
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    invoke-virtual {v10}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$9(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 312
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 313
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->steeringWheelPause()V

    goto :goto_d

    .line 318
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_1a
    const-string v10, "xy.android.rightavin.leave"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 320
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    invoke-virtual {v10}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$9(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 321
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 322
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->play()V

    goto :goto_e

    .line 326
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_1b
    const-string v10, "xy.android.rightavin.come"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 328
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    invoke-virtual {v10}, Lcom/acloud/PlayStateControlManager;->isRecvMainUi()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isRecvWheelControl:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$9(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 329
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 330
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->pause()V

    goto :goto_f

    .line 335
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_1c
    const-string v10, "com.acloud.intent.android.MAINUI_UPDATE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 337
    const-string v10, "extras"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "infos":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 339
    .local v6, "len":I
    if-eqz v5, :cond_0

    array-length v6, v5

    if-eqz v6, :cond_0

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v10, "?"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, "pkgname":Ljava/lang/String;
    const-string v10, "KillAppSync"

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    const/4 v10, 0x3

    if-ne v6, v10, :cond_1d

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 350
    :cond_1d
    const-string v10, "OpenAppSync"

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v10, 0x3

    if-ne v6, v10, :cond_1e

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 352
    :cond_1e
    const-string v10, "CloseAppSync"

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v10, 0x3

    if-ne v6, v10, :cond_1f

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 356
    :cond_1f
    const-string v10, "KillAppSync"

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    const-string v10, "CloseAppSync"

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 357
    :cond_20
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 358
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->quitApp()V

    goto :goto_10

    .line 377
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    .end local v5    # "infos":[Ljava/lang/String;
    .end local v6    # "len":I
    .end local v8    # "pkgname":Ljava/lang/String;
    :cond_21
    const/4 v10, 0x2

    if-ne v10, v7, :cond_0

    .line 378
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_curPlayState:I
    invoke-static {v11}, Lcom/acloud/PlayStateControlManager;->access$13(Lcom/acloud/PlayStateControlManager;)I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 379
    const/4 v10, 0x2

    iget-object v11, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_curPlayState:I
    invoke-static {v11}, Lcom/acloud/PlayStateControlManager;->access$13(Lcom/acloud/PlayStateControlManager;)I

    move-result v11

    if-eq v10, v11, :cond_0

    .line 383
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isFlameout:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$0(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-nez v10, :cond_22

    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->m_isLockScreen:Z
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$12(Lcom/acloud/PlayStateControlManager;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 384
    :cond_22
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$14(Lcom/acloud/PlayStateControlManager;I)V

    .line 385
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 386
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->stop()V

    goto :goto_11

    .line 389
    .end local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    :cond_23
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/acloud/PlayStateControlManager;->access$14(Lcom/acloud/PlayStateControlManager;I)V

    .line 390
    iget-object v10, p0, Lcom/acloud/PlayStateControlManager$1;->this$0:Lcom/acloud/PlayStateControlManager;

    # getter for: Lcom/acloud/PlayStateControlManager;->mPlayStateInterfaces:Ljava/util/List;
    invoke-static {v10}, Lcom/acloud/PlayStateControlManager;->access$1(Lcom/acloud/PlayStateControlManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/PlayStateControlManager$PlayStateInterface;

    .line 391
    .restart local v3    # "callback":Lcom/acloud/PlayStateControlManager$PlayStateInterface;
    invoke-interface {v3}, Lcom/acloud/PlayStateControlManager$PlayStateInterface;->pause()V

    goto :goto_12

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
