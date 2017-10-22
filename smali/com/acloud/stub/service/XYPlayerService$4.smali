.class Lcom/acloud/stub/service/XYPlayerService$4;
.super Ljava/lang/Object;
.source "XYPlayerService.java"

# interfaces
.implements Lcom/acloud/stub/service/XYPlayerService$WidgetCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/service/XYPlayerService;->onCreate()V
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
    iput-object p1, p0, Lcom/acloud/stub/service/XYPlayerService$4;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public play(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v0, p0, Lcom/acloud/stub/service/XYPlayerService$4;->this$0:Lcom/acloud/stub/service/XYPlayerService;

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/acloud/stub/service/XYPlayerService;->play(Ljava/lang/String;IIZ)V

    .line 368
    return-void
.end method
