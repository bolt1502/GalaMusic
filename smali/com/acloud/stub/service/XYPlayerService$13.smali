.class Lcom/acloud/stub/service/XYPlayerService$13;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/stub/player/XYMediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$13;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 1110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/acloud/stub/player/XYMediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Lcom/acloud/stub/player/XYMediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$13;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    # invokes: Lcom/acloud/stub/service/XYPlayerService;->sendError()V
    invoke-static {v0}, Lcom/acloud/stub/service/XYPlayerService;->access$37(Lcom/acloud/stub/service/XYPlayerService;)V

    .line 1117
    const/4 v0, 0x1

    return v0
.end method
