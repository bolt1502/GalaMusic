.class public abstract Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GalaBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/adapter/GalaBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mTag:I

.field final synthetic this$0:Lcom/acloud/adapter/GalaBaseAdapter;


# direct methods
.method public constructor <init>(Lcom/acloud/adapter/GalaBaseAdapter;)V
    .locals 1

    .prologue
    .line 323
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>.ViewHolder<TT;>;"
    iput-object p1, p0, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->mTag:I

    return-void
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .prologue
    .line 369
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>.ViewHolder<TT;>;"
    iget v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->mTag:I

    return v0
.end method

.method public abstract initHolder(Landroid/view/View;I)V
.end method

.method public loadData(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>.ViewHolder<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->this$0:Lcom/acloud/adapter/GalaBaseAdapter;

    invoke-virtual {v0}, Lcom/acloud/adapter/GalaBaseAdapter;->getSelectedIndex()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->loadData(Ljava/lang/Object;IZ)V

    .line 339
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData(Ljava/lang/Object;IZ)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "isSelected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZ)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>.ViewHolder<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "tag"    # I

    .prologue
    .line 365
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>.ViewHolder<TT;>;"
    iput p1, p0, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;->mTag:I

    .line 366
    return-void
.end method

.method public updateImage(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;, "Lcom/acloud/adapter/GalaBaseAdapter<TT;>.ViewHolder<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    return-void
.end method
