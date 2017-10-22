.class Lcom/acloud/GlaSmsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "GlaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/GlaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/GlaSmsManager;


# direct methods
.method constructor <init>(Lcom/acloud/GlaSmsManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/GlaSmsManager$1;->this$0:Lcom/acloud/GlaSmsManager;

    .line 102
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 108
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v10

    .line 109
    .local v10, "sms":Landroid/telephony/SmsManager;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 111
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 113
    const-string v13, "pdus"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 115
    .local v8, "pdus":[Ljava/lang/Object;
    array-length v13, v8

    new-array v5, v13, [Landroid/telephony/SmsMessage;

    .line 117
    .local v5, "messages":[Landroid/telephony/SmsMessage;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v13, v5

    if-lt v3, v13, :cond_1

    .line 122
    const/4 v4, 0x0

    .line 125
    .local v4, "isGetData":Z
    array-length v15, v5

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-lt v14, v15, :cond_2

    .line 161
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "isGetData":Z
    .end local v5    # "messages":[Landroid/telephony/SmsMessage;
    .end local v8    # "pdus":[Ljava/lang/Object;
    .end local v10    # "sms":Landroid/telephony/SmsManager;
    :cond_0
    return-void

    .line 118
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "i":I
    .restart local v5    # "messages":[Landroid/telephony/SmsMessage;
    .restart local v8    # "pdus":[Ljava/lang/Object;
    .restart local v10    # "sms":Landroid/telephony/SmsManager;
    :cond_1
    aget-object v7, v8, v3

    check-cast v7, [B

    .line 119
    .local v7, "pdu":[B
    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v13

    aput-object v13, v5, v3

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v7    # "pdu":[B
    .restart local v4    # "isGetData":Z
    :cond_2
    aget-object v6, v5, v14

    .line 126
    .local v6, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "sender":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/acloud/GlaSmsManager$1;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mFilterPhoneNumber:[Ljava/lang/String;
    invoke-static {v13}, Lcom/acloud/GlaSmsManager;->access$0(Lcom/acloud/GlaSmsManager;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/acloud/GlaSmsManager$1;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mFilterPhoneNumber:[Ljava/lang/String;
    invoke-static {v13}, Lcom/acloud/GlaSmsManager;->access$0(Lcom/acloud/GlaSmsManager;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v17

    if-lt v13, v0, :cond_4

    .line 155
    :cond_3
    :goto_3
    if-nez v4, :cond_0

    .line 125
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_1

    .line 129
    :cond_4
    aget-object v11, v16, v13

    .line 131
    .local v11, "smsNumber":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 129
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 135
    :cond_6
    const/16 v18, 0x0

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 137
    const/4 v4, 0x1

    .line 139
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 141
    .local v12, "strContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/acloud/GlaSmsManager$1;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v13}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/acloud/GlaSmsManager$1;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v13}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v13

    invoke-interface {v13, v9, v12}, Lcom/acloud/GlaSmsManager$SmsCallback;->onSmsContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 149
    .end local v11    # "smsNumber":Ljava/lang/String;
    .end local v12    # "strContent":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 150
    .restart local v12    # "strContent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/acloud/GlaSmsManager$1;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v13}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/acloud/GlaSmsManager$1;->this$0:Lcom/acloud/GlaSmsManager;

    # getter for: Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;
    invoke-static {v13}, Lcom/acloud/GlaSmsManager;->access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;

    move-result-object v13

    invoke-interface {v13, v9, v12}, Lcom/acloud/GlaSmsManager$SmsCallback;->onSmsContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
