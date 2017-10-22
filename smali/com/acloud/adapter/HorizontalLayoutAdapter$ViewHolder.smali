.class public abstract Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HorizontalLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/adapter/HorizontalLayoutAdapter;
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
.field private isUpdate:Z

.field final synthetic this$0:Lcom/acloud/adapter/HorizontalLayoutAdapter;


# direct methods
.method public constructor <init>(Lcom/acloud/adapter/HorizontalLayoutAdapter;)V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>.ViewHolder<TT;>;"
    iput-object p1, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->this$0:Lcom/acloud/adapter/HorizontalLayoutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->isUpdate:Z

    return-void
.end method


# virtual methods
.method public getUpdate()Z
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>.ViewHolder<TT;>;"
    iget-boolean v0, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->isUpdate:Z

    return v0
.end method

.method public abstract initHolder(Landroid/view/View;I)V
.end method

.method public abstract loadData(Ljava/lang/Object;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IZ)V"
        }
    .end annotation
.end method

.method public setUpdate(Z)V
    .locals 0
    .param p1, "isUpdate"    # Z

    .prologue
    .line 139
    .local p0, "this":Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;, "Lcom/acloud/adapter/HorizontalLayoutAdapter<TT;>.ViewHolder<TT;>;"
    iput-boolean p1, p0, Lcom/acloud/adapter/HorizontalLayoutAdapter$ViewHolder;->isUpdate:Z

    .line 140
    return-void
.end method
