.class public Lcom/acloud/GlaSmsManager;
.super Ljava/lang/Object;
.source "GlaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/GlaSmsManager$SmsCallback;
    }
.end annotation


# static fields
.field private static final SMS_RECEIVER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static instance:Lcom/acloud/GlaSmsManager;


# instance fields
.field private isRegisterRecv:Z

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFilterPhoneNumber:[Ljava/lang/String;

.field private mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;

.field private mSmsReceiver:Landroid/content/BroadcastReceiver;

.field private mSysManger:Landroid/telephony/SmsManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/acloud/GlaSmsManager;->mContext:Landroid/content/Context;

    .line 28
    iput-object v1, p0, Lcom/acloud/GlaSmsManager;->mFilter:Landroid/content/IntentFilter;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/GlaSmsManager;->isRegisterRecv:Z

    .line 33
    iput-object v1, p0, Lcom/acloud/GlaSmsManager;->mFilterPhoneNumber:[Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;

    .line 102
    new-instance v0, Lcom/acloud/GlaSmsManager$1;

    invoke-direct {v0, p0}, Lcom/acloud/GlaSmsManager$1;-><init>(Lcom/acloud/GlaSmsManager;)V

    iput-object v0, p0, Lcom/acloud/GlaSmsManager;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/acloud/GlaSmsManager;->mSysManger:Landroid/telephony/SmsManager;

    .line 38
    iput-object p1, p0, Lcom/acloud/GlaSmsManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/GlaSmsManager;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mFilterPhoneNumber:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/acloud/GlaSmsManager;)Lcom/acloud/GlaSmsManager$SmsCallback;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;

    return-object v0
.end method

.method private getDeliveryIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 274
    const-string v0, "DELIVERED_SMS_ACTION"

    .line 276
    .local v0, "DELIVERED_SMS_ACTION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "deliverIntent":Landroid/content/Intent;
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 279
    .local v2, "deliverPI":Landroid/app/PendingIntent;
    new-instance v3, Lcom/acloud/GlaSmsManager$3;

    invoke-direct {v3, p0, p1}, Lcom/acloud/GlaSmsManager$3;-><init>(Lcom/acloud/GlaSmsManager;Landroid/content/Context;)V

    .line 288
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/acloud/GlaSmsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/acloud/GlaSmsManager;->instance:Lcom/acloud/GlaSmsManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/acloud/GlaSmsManager;

    invoke-direct {v0, p0}, Lcom/acloud/GlaSmsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/acloud/GlaSmsManager;->instance:Lcom/acloud/GlaSmsManager;

    .line 70
    :cond_0
    sget-object v0, Lcom/acloud/GlaSmsManager;->instance:Lcom/acloud/GlaSmsManager;

    return-object v0
.end method

.method private getSentIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 246
    const-string v0, "SENT_SMS_ACTION"

    .line 247
    .local v0, "SENT_SMS_ACTION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, "sentIntent":Landroid/content/Intent;
    invoke-static {p1, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 250
    .local v2, "sentPI":Landroid/app/PendingIntent;
    new-instance v3, Lcom/acloud/GlaSmsManager$2;

    invoke-direct {v3, p0}, Lcom/acloud/GlaSmsManager$2;-><init>(Lcom/acloud/GlaSmsManager;)V

    .line 268
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    return-object v2
.end method

.method private isSimCanUse(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 235
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/acloud/GlaSmsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 237
    :cond_0
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/acloud/GlaSmsManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 237
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    move v0, v1

    .line 242
    goto :goto_0
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/acloud/GlaSmsManager;->instance:Lcom/acloud/GlaSmsManager;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/acloud/GlaSmsManager;->instance:Lcom/acloud/GlaSmsManager;

    invoke-virtual {v0}, Lcom/acloud/GlaSmsManager;->unregisterSmsReceiver()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/GlaSmsManager;->instance:Lcom/acloud/GlaSmsManager;

    .line 81
    return-void
.end method


# virtual methods
.method public registerSmsReceiver()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/acloud/GlaSmsManager;->mFilter:Landroid/content/IntentFilter;

    .line 182
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/acloud/GlaSmsManager;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/acloud/GlaSmsManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acloud/GlaSmsManager;->isRegisterRecv:Z

    .line 187
    return-void
.end method

.method public sendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/acloud/GlaSmsManager;->isSimCanUse(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mSysManger:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 198
    .local v6, "divideMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    .end local v6    # "divideMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 198
    .restart local v6    # "divideMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 199
    .local v3, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mSysManger:Landroid/telephony/SmsManager;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/acloud/GlaSmsManager;->getSentIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/acloud/GlaSmsManager;->getDeliveryIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 202
    .end local v3    # "msg":Ljava/lang/String;
    .end local v6    # "divideMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;

    invoke-interface {v0}, Lcom/acloud/GlaSmsManager$SmsCallback;->onSmsFailure()V

    goto :goto_1
.end method

.method public sendTextMessage(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "destinationAddress"    # [Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/acloud/GlaSmsManager;->isSimCanUse(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mSysManger:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 218
    .local v6, "divideMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 219
    array-length v8, p2

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-lt v7, v8, :cond_1

    .line 230
    .end local v6    # "divideMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 219
    .restart local v6    # "divideMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    aget-object v1, p2, v7

    .line 220
    .local v1, "add":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 220
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mSysManger:Landroid/telephony/SmsManager;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/acloud/GlaSmsManager;->getSentIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/acloud/GlaSmsManager;->getDeliveryIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 226
    .end local v1    # "add":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v6    # "divideMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;

    invoke-interface {v0}, Lcom/acloud/GlaSmsManager$SmsCallback;->onSmsFailure()V

    goto :goto_1
.end method

.method public setSmsCallback(Lcom/acloud/GlaSmsManager$SmsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/acloud/GlaSmsManager$SmsCallback;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/acloud/GlaSmsManager;->mSmsCallback:Lcom/acloud/GlaSmsManager$SmsCallback;

    .line 89
    return-void
.end method

.method public setSmsFilterNumber([Ljava/lang/String;)V
    .locals 0
    .param p1, "numbers"    # [Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/acloud/GlaSmsManager;->mFilterPhoneNumber:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method public unregisterSmsReceiver()V
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/acloud/GlaSmsManager;->isRegisterRecv:Z

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/GlaSmsManager;->isRegisterRecv:Z

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/GlaSmsManager;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    :cond_0
    return-void
.end method
