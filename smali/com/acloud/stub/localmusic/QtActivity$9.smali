.class Lcom/acloud/stub/localmusic/QtActivity$9;
.super Ljava/lang/Object;
.source "QtActivity.java"

# interfaces
.implements Lcom/acloud/DataRunnable$DataRunnableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/acloud/stub/localmusic/QtActivity;->loadLrc(Lcom/acloud/stub/localmusic/data/MusicInfoData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/localmusic/QtActivity;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/QtActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$9;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1090
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$9;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/acloud/stub/utils/LrcUtils;->getLrcData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$54(Lcom/acloud/stub/localmusic/QtActivity;Ljava/util/List;)V

    .line 1091
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$9;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLrcHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$55(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1092
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1093
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1094
    iget-object v1, p0, Lcom/acloud/stub/localmusic/QtActivity$9;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLrcHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/QtActivity;->access$55(Lcom/acloud/stub/localmusic/QtActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1095
    return-void
.end method
