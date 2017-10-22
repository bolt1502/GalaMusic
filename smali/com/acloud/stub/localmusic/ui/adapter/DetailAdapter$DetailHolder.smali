.class final Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;
.super Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;
.source "DetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DetailHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/acloud/adapter/GalaBaseAdapter",
        "<",
        "Ljava/lang/String;",
        ">.ViewHolder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public mDetailText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;


# direct methods
.method private constructor <init>(Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    invoke-direct {p0, p1}, Lcom/acloud/adapter/GalaBaseAdapter$ViewHolder;-><init>(Lcom/acloud/adapter/GalaBaseAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;-><init>(Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;)V

    return-void
.end method


# virtual methods
.method public initHolder(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 48
    const v0, 0x7f0b0083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;->mDetailText:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public bridge synthetic loadData(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;->loadData(Ljava/lang/String;I)V

    return-void
.end method

.method public loadData(Ljava/lang/String;I)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;->mDetailText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->selectPosition:I
    invoke-static {v0}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->access$0(Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;->mDetailText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;->this$0:Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;

    # getter for: Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;->access$1(Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/adapter/DetailAdapter$DetailHolder;->mDetailText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
