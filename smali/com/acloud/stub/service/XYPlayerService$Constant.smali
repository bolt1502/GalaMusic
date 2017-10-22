.class public Lcom/acloud/stub/service/XYPlayerService$Constant;
.super Ljava/lang/Object;
.source "XYPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/service/XYPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Constant"
.end annotation


# static fields
.field public static final ACTION_INITDATA:Ljava/lang/String; = "xy.cdwidget.initdata"

.field public static final ACTION_LOWER_VOLUME:Ljava/lang/String; = "com.acloud.intent.android.LOWER_VOLUME"

.field public static final ACTION_MAINUI_UPDATE:Ljava/lang/String; = "com.acloud.intent.android.MAINUI_UPDATE"

.field public static final ACTION_MUSIC:Ljava/lang/String; = "com.acloud.android.intent.MUSIC"

.field public static final ACTION_ONLINE_RADIO:Ljava/lang/String; = "com.acloud.android.intent.ONLINE_RADIO"

.field public static final ACTION_REINITDATA:Ljava/lang/String; = "xy.cdwidget.reinitdata"

.field public static final ACTION_RESTORE_VOLUME:Ljava/lang/String; = "com.acloud.intent.android.RESTORE_VOLUME"

.field public static final ACTION_STOP:Ljava/lang/String; = "xy.cdwidget.stop"

.field public static final ACTION_WIDGET_NEXT:Ljava/lang/String; = "xy.cdwidget.next"

.field public static final ACTION_WIDGET_PAUSE:Ljava/lang/String; = "xy.cdwidget.pause"

.field public static final ACTION_WIDGET_PLAY:Ljava/lang/String; = "xy.cdwidget.play"

.field public static final ACTION_WIDGET_PREV:Ljava/lang/String; = "xy.cdwidget.prev"

.field public static final EXTRA_METHOD:Ljava/lang/String; = "method"

.field public static final EXTRA_METHOD_PARAM:Ljava/lang/String; = "method_param"

.field public static final EXTRA_METHOD_PARAMS:Ljava/lang/String; = "method_params"

.field public static final KEY_EXTRA_MAINUI:Ljava/lang/String; = "extras"

.field public static final MAIN_UI_KEY:Ljava/lang/String; = "action_local_music"

.field public static final METHOD_ACTION:Ljava/lang/String; = "method_action"

.field public static final METHOD_INIT:Ljava/lang/String; = "method_init"

.field public static final METHOD_PAUSE:Ljava/lang/String; = "method_pause"

.field public static final METHOD_PLAY:Ljava/lang/String; = "method_play"

.field public static final METHOD_RELEASE:Ljava/lang/String; = "method_release"

.field public static final METHOD_SCAN:Ljava/lang/String; = "method_scan"

.field public static final METHOD_SEEK:Ljava/lang/String; = "method_seek"

.field public static final METHOD_START:Ljava/lang/String; = "method_start"

.field public static final METHOD_STATE:Ljava/lang/String; = "method_state"

.field public static final METHOD_STOP:Ljava/lang/String; = "method_stop"

.field public static final PARAM_MUSIC_ID:Ljava/lang/String; = "_id"

.field public static final PARAM_MUSIC_TYPE:Ljava/lang/String; = "_type"

.field public static final PARAM_PLAY_PATH:Ljava/lang/String; = "path"

.field public static final VIDEO_PARAM:Ljava/lang/String; = "param"


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/service/XYPlayerService;


# direct methods
.method public constructor <init>(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$Constant;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
