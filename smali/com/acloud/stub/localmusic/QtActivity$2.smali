.class Lcom/acloud/stub/localmusic/QtActivity$2;
.super Landroid/os/Handler;
.source "QtActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/QtActivity;
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
    iput-object p1, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    .line 213
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 217
    if-eqz p1, :cond_1

    .line 218
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1

    .line 219
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 220
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 221
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "songName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLrcAdapter:Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$5(Lcom/acloud/stub/localmusic/QtActivity;)Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$6(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acloud/stub/localmusic/ui/adapter/LrcListAdapter;->setData(Ljava/util/List;)V

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mLrcDataList:Ljava/util/List;
    invoke-static {v2}, Lcom/acloud/stub/localmusic/QtActivity;->access$6(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    iget-object v3, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/acloud/stub/localmusic/QtActivity$2;->this$0:Lcom/acloud/stub/localmusic/QtActivity;

    # getter for: Lcom/acloud/stub/localmusic/QtActivity;->mPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/acloud/stub/localmusic/QtActivity;->access$4(Lcom/acloud/stub/localmusic/QtActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/acloud/stub/localmusic/QtActivity;->resetLrc(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/acloud/stub/localmusic/QtActivity;->access$7(Lcom/acloud/stub/localmusic/QtActivity;Ljava/lang/String;)V

    .line 233
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "songName":Ljava/lang/String;
    :cond_1
    return-void
.end method
