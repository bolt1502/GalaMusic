.class Lcom/acloud/stub/service/XYPlayerService$14;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/stub/player/XYMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/service/XYPlayerService;->selectPlayer(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/service/XYPlayerService;


# direct methods
.method constructor <init>(Lcom/acloud/stub/service/XYPlayerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$14;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lcom/acloud/stub/player/XYMediaPlayer;I)V
    .locals 0
    .param p1, "arg0"    # Lcom/acloud/stub/player/XYMediaPlayer;
    .param p2, "arg1"    # I

    .prologue
    .line 1127
    return-void
.end method
