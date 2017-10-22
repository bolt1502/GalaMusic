.class public Lcom/acloud/utils/VolumeControlUtils;
.super Ljava/lang/Object;
.source "VolumeControlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static pThis:Lcom/acloud/utils/VolumeControlUtils;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/acloud/utils/VolumeControlUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/acloud/utils/VolumeControlUtils;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/utils/VolumeControlUtils;->pThis:Lcom/acloud/utils/VolumeControlUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/acloud/utils/VolumeControlUtils;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/acloud/utils/VolumeControlUtils$1;

    invoke-direct {v0, p0}, Lcom/acloud/utils/VolumeControlUtils$1;-><init>(Lcom/acloud/utils/VolumeControlUtils;)V

    iput-object v0, p0, Lcom/acloud/utils/VolumeControlUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object v1, p0, Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/acloud/utils/VolumeControlUtils;)Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    return-object v0
.end method

.method public static getInstance()Lcom/acloud/utils/VolumeControlUtils;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/acloud/utils/VolumeControlUtils;->pThis:Lcom/acloud/utils/VolumeControlUtils;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/acloud/utils/VolumeControlUtils;

    invoke-direct {v0}, Lcom/acloud/utils/VolumeControlUtils;-><init>()V

    sput-object v0, Lcom/acloud/utils/VolumeControlUtils;->pThis:Lcom/acloud/utils/VolumeControlUtils;

    .line 69
    :cond_0
    sget-object v0, Lcom/acloud/utils/VolumeControlUtils;->pThis:Lcom/acloud/utils/VolumeControlUtils;

    return-object v0
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/acloud/utils/VolumeControlUtils;->pThis:Lcom/acloud/utils/VolumeControlUtils;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/acloud/utils/VolumeControlUtils;->pThis:Lcom/acloud/utils/VolumeControlUtils;

    invoke-virtual {v0}, Lcom/acloud/utils/VolumeControlUtils;->unRegisterReceiver()V

    .line 79
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/acloud/utils/VolumeControlUtils;->pThis:Lcom/acloud/utils/VolumeControlUtils;

    .line 80
    return-void
.end method


# virtual methods
.method public getStreamMaxVolume(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/acloud/VerConfig;->isAc3561(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    const/16 v1, 0x28

    .line 234
    :goto_0
    return v1

    .line 233
    :cond_1
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 234
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    goto :goto_0
.end method

.method public getVolume(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-static {p1}, Lcom/acloud/VerConfig;->isAc8217(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    invoke-static {p1}, Lcom/acloud/VerConfig;->isAc3561(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 207
    const-string v3, "McuMainVolume"

    .line 205
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 215
    :cond_0
    :try_start_1
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    check-cast v0, Landroid/media/AudioManager;

    .line 216
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 217
    .end local v0    # "mAudioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .line 221
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 209
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public isMute(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 244
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStreamMute(ZLandroid/content/Context;)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-object v3, Lcom/acloud/utils/VolumeControlUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setStreamMute:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p2}, Lcom/acloud/VerConfig;->isAc8217(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    invoke-static {p2}, Lcom/acloud/VerConfig;->isAc3561(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    const-string v3, "==============setStreamMute==="

    invoke-static {v3}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "mutestate":I
    if-eqz p1, :cond_0

    .line 178
    const/4 v2, 0x1

    .line 180
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 181
    const-string v3, "xy.android.mute.apk"

    .line 180
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "McuMuteState"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    const-string v3, "audio"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    check-cast v1, Landroid/media/AudioManager;

    .line 186
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-virtual {v1, v3, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 194
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "mutestate":I
    :goto_0
    return-void

    .line 189
    .end local v1    # "mAudioManager":Landroid/media/AudioManager;
    :cond_1
    const-string v3, "audio"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    check-cast v1, Landroid/media/AudioManager;

    .line 190
    .restart local v1    # "mAudioManager":Landroid/media/AudioManager;
    if-eqz p1, :cond_2

    .line 191
    const/4 v3, 0x0

    .line 190
    :goto_1
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 191
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public setVolume(ILandroid/content/Context;)V
    .locals 5
    .param p1, "step"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    .line 150
    const-string v2, "audio"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 151
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    move v1, p1

    .line 153
    .local v1, "nTempVolume":I
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 154
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 157
    :cond_0
    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    .line 158
    add-int/lit8 v1, v1, -0x64

    .line 160
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=========nTempVolume="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/acloud/utils/Logcat;->d(Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x0

    .line 161
    invoke-virtual {v0, v4, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 164
    return-void
.end method

.method public setVolumeControlInterface(Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;Landroid/content/Context;)V
    .locals 3
    .param p1, "callback"    # Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    if-eqz v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    .line 116
    iput-object p2, p0, Lcom/acloud/utils/VolumeControlUtils;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "xy.android.mute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/acloud/utils/VolumeControlUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/acloud/utils/VolumeControlUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acloud/utils/VolumeControlUtils;->mVolumeControlInterface:Lcom/acloud/utils/VolumeControlUtils$VolumeControlInterface;

    .line 133
    iget-object v0, p0, Lcom/acloud/utils/VolumeControlUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/acloud/utils/VolumeControlUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    :cond_0
    return-void
.end method
