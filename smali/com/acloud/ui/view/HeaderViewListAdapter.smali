.class public Lcom/acloud/ui/view/HeaderViewListAdapter;
.super Ljava/lang/Object;
.source "HeaderViewListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/ui/view/HListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/ui/view/HListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/ui/view/HListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    sput-object v0, Lcom/acloud/ui/view/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/ui/view/HListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/ui/view/HListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/ui/view/HListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/ui/view/HListView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 61
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mIsFilterable:Z

    .line 63
    if-nez p1, :cond_0

    .line 64
    sget-object v0, Lcom/acloud/ui/view/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 69
    :goto_0
    if-nez p2, :cond_1

    .line 70
    sget-object v0, Lcom/acloud/ui/view/HeaderViewListAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 75
    :goto_2
    iput-boolean v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    .line 78
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 72
    :cond_1
    iput-object p2, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    .line 77
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/acloud/ui/view/HListView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/acloud/ui/view/HListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 94
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acloud/ui/view/HListView$FixedViewInfo;

    .line 95
    .local v0, "info":Lcom/acloud/ui/view/HListView$FixedViewInfo;
    iget-boolean v2, v0, Lcom/acloud/ui/view/HListView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    iget-object v1, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 147
    iget-boolean v1, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 177
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 178
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;

    iget-object v3, v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 192
    :goto_0
    return-object v3

    .line 182
    :cond_0
    sub-int v1, p1, v2

    .line 183
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 184
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 185
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 186
    if-ge v1, v0, :cond_1

    .line 187
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;

    iget-object v3, v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 197
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 198
    sub-int v1, p1, v2

    .line 199
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 200
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 201
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 204
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 237
    .local v2, "numHeaders":I
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 238
    sub-int v1, p1, v2

    .line 239
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 240
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 241
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 245
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 217
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 218
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;

    iget-object v3, v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;->view:Landroid/view/View;

    .line 232
    :goto_0
    return-object v3

    .line 222
    :cond_0
    sub-int v1, p1, v2

    .line 223
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 224
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 226
    if-ge v1, v0, :cond_1

    .line 227
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 232
    :cond_1
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;

    iget-object v3, v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/acloud/ui/view/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 156
    .local v2, "numHeaders":I
    if-ge p1, v2, :cond_0

    .line 157
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;->isSelectable:Z

    .line 171
    :goto_0
    return v3

    .line 161
    :cond_0
    sub-int v1, p1, v2

    .line 162
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 163
    .local v0, "adapterCount":I
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 165
    if-ge v1, v0, :cond_1

    .line 166
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;

    iget-boolean v3, v3, Lcom/acloud/ui/view/HListView$FixedViewInfo;->isSelectable:Z

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 259
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    move v3, v2

    .line 134
    :goto_1
    return v3

    .line 122
    :cond_0
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/ui/view/HListView$FixedViewInfo;

    .line 123
    .local v1, "info":Lcom/acloud/ui/view/HListView$FixedViewInfo;
    iget-object v4, v1, Lcom/acloud/ui/view/HListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_2

    .line 124
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 127
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/acloud/ui/view/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/acloud/ui/view/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 126
    :cond_1
    iput-boolean v2, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    goto :goto_1

    .line 121
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    move v3, v2

    .line 117
    :goto_1
    return v3

    .line 105
    :cond_0
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/acloud/ui/view/HListView$FixedViewInfo;

    .line 106
    .local v1, "info":Lcom/acloud/ui/view/HListView$FixedViewInfo;
    iget-object v4, v1, Lcom/acloud/ui/view/HListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_2

    .line 107
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/acloud/ui/view/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/acloud/ui/view/HeaderViewListAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 109
    :cond_1
    iput-boolean v2, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAreAllFixedViewsSelectable:Z

    goto :goto_1

    .line 104
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/acloud/ui/view/HeaderViewListAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 265
    :cond_0
    return-void
.end method
