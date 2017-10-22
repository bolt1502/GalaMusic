.class public Lcom/acloud/IntentAction$AudioManager;
.super Ljava/lang/Object;
.source "IntentAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/IntentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioManager"
.end annotation


# static fields
.field public static final ACTION_MCU_MAIN_VOLUME_ADJUST:Ljava/lang/String; = "xy.android.main.volume"

.field public static final ACTION_MCU_MAIN_VOLUME_CHANGED:Ljava/lang/String; = "xy.android.main.volume.changed"

.field public static final ACTION_MUTE:Ljava/lang/String; = "xy.android.mute"

.field public static final ACTION_MUTE_APK:Ljava/lang/String; = "xy.android.mute.apk"

.field public static final EXTRA_PREV_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final MCU_MAIN_VOLUME:Ljava/lang/String; = "McuMainVolume"

.field public static final MCU_MUTE_STATE:Ljava/lang/String; = "McuMuteState"

.field public static final MEDIA_VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field final synthetic this$0:Lcom/acloud/IntentAction;


# direct methods
.method public constructor <init>(Lcom/acloud/IntentAction;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/acloud/IntentAction$AudioManager;->this$0:Lcom/acloud/IntentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
