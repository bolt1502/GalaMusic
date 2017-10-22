.class public Lcom/acloud/IntentAction$Media;
.super Ljava/lang/Object;
.source "IntentAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/IntentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Media"
.end annotation


# static fields
.field public static final ACTION_MUSIC:Ljava/lang/String; = "com.acloud.android.intent.MUSIC"

.field public static final EXTRA_METHOD:Ljava/lang/String; = "method"

.field public static final EXTRA_METHOD_PARAM:Ljava/lang/String; = "method_param"

.field public static final EXTRA_METHOD_PARAMS:Ljava/lang/String; = "method_params"

.field public static final METHOD_ACTION:Ljava/lang/String; = "method_action"

.field public static final METHOD_INIT:Ljava/lang/String; = "method_init"

.field public static final METHOD_PAUSE:Ljava/lang/String; = "method_pause"

.field public static final METHOD_PLAY:Ljava/lang/String; = "method_play"

.field public static final METHOD_RELEASE:Ljava/lang/String; = "method_release"

.field public static final METHOD_SCAN:Ljava/lang/String; = "method_scan"

.field public static final METHOD_SEEK:Ljava/lang/String; = "method_seek"

.field public static final METHOD_START:Ljava/lang/String; = "method_start"

.field public static final METHOD_STOP:Ljava/lang/String; = "method_stop"

.field public static final PARAM_MUSIC_ID:Ljava/lang/String; = "_id"

.field public static final PARAM_MUSIC_TYPE:Ljava/lang/String; = "_type"

.field public static final PARAM_PLAY_PATH:Ljava/lang/String; = "path"

.field public static final VIDEO_PARAM:Ljava/lang/String; = "param"


# instance fields
.field final synthetic this$0:Lcom/acloud/IntentAction;


# direct methods
.method public constructor <init>(Lcom/acloud/IntentAction;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/acloud/IntentAction$Media;->this$0:Lcom/acloud/IntentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
