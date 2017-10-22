.class Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$2;
.super Ljava/lang/Object;
.source "ACT_MusicList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;


# direct methods
.method constructor <init>(Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$2;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 788
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList$2;->this$0:Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;

    invoke-virtual {v0, p3}, Lcom/acloud/stub/localmusic/ui/activity/ACT_MusicList;->onItemClickMusic(I)V

    .line 789
    return-void
.end method
