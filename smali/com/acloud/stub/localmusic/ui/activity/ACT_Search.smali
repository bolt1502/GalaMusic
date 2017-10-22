.class public Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;
.super Lcom/acloud/activity/BaseActivity;
.source "ACT_Search.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mSearchTextView:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/acloud/activity/BaseActivity;-><init>()V

    .line 19
    const/16 v0, 0x1c

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    .line 17
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getInstance()Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acloud/stub/localmusic/data/LocalPlayerInfo;->getWrongInitialList()Ljava/util/List;

    move-result-object v1

    .line 38
    .local v1, "wrongInitialList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 47
    :cond_1
    return-void

    .line 39
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 40
    .local v0, "initial":C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_3

    .line 41
    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setTextColorAndEnable(I)V

    goto :goto_0

    .line 42
    :cond_3
    const/16 v2, 0x23

    if-ne v2, v0, :cond_0

    .line 43
    const/16 v2, 0x1b

    invoke-direct {p0, v2}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setTextColorAndEnable(I)V

    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const v1, 0x7f0b0058

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v2

    .line 56
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/4 v4, 0x1

    const v1, 0x7f0b0059

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 57
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/4 v4, 0x2

    const v1, 0x7f0b005a

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 58
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/4 v4, 0x3

    const v1, 0x7f0b005b

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 59
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/4 v4, 0x4

    const v1, 0x7f0b005c

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 60
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/4 v4, 0x5

    const v1, 0x7f0b005d

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 61
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/4 v4, 0x6

    const v1, 0x7f0b005e

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 62
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/4 v4, 0x7

    const v1, 0x7f0b0060

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 63
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x8

    const v1, 0x7f0b0061

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 64
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x9

    const v1, 0x7f0b0062

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 65
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0xa

    const v1, 0x7f0b0063

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 66
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0xb

    const v1, 0x7f0b0064

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 67
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0xc

    const v1, 0x7f0b0065

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 68
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0xd

    const v1, 0x7f0b0066

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 69
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0xe

    const v1, 0x7f0b0068

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 70
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0xf

    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 71
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x10

    const v1, 0x7f0b006a

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 72
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x11

    const v1, 0x7f0b006b

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 73
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x12

    const v1, 0x7f0b006c

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 74
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x13

    const v1, 0x7f0b006d

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 75
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x14

    const v1, 0x7f0b006e

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 76
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x15

    const v1, 0x7f0b0070

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 77
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x16

    const v1, 0x7f0b0071

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 78
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x17

    const v1, 0x7f0b0072

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 79
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x18

    const v1, 0x7f0b0073

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 80
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x19

    const v1, 0x7f0b0074

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 81
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x1a

    const v1, 0x7f0b0075

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 82
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    const/16 v4, 0x1b

    const v1, 0x7f0b0076

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v3, v4

    .line 84
    const v1, 0x7f0b0055

    invoke-virtual {p0, v1}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v3, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 89
    return-void

    .line 86
    :cond_0
    aget-object v0, v3, v1

    .line 87
    .local v0, "initialText":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setTextColorAndEnable(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, p0, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->mSearchTextView:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f030002

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acloud/AppManager;->finishActivity(Landroid/app/Activity;)V

    .line 183
    return-void

    .line 95
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 98
    :pswitch_2
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 101
    :pswitch_3
    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 104
    :pswitch_4
    const/16 v0, 0x62

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 107
    :pswitch_5
    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 110
    :pswitch_6
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 113
    :pswitch_7
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 116
    :pswitch_8
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 119
    :pswitch_9
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 122
    :pswitch_a
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 125
    :pswitch_b
    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 128
    :pswitch_c
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 131
    :pswitch_d
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 134
    :pswitch_e
    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 137
    :pswitch_f
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 140
    :pswitch_10
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 143
    :pswitch_11
    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 146
    :pswitch_12
    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 149
    :pswitch_13
    const/16 v0, 0x71

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 152
    :pswitch_14
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto :goto_0

    .line 155
    :pswitch_15
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto/16 :goto_0

    .line 158
    :pswitch_16
    const/16 v0, 0x74

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto/16 :goto_0

    .line 161
    :pswitch_17
    const/16 v0, 0x75

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto/16 :goto_0

    .line 164
    :pswitch_18
    const/16 v0, 0x76

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto/16 :goto_0

    .line 167
    :pswitch_19
    const/16 v0, 0x77

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto/16 :goto_0

    .line 170
    :pswitch_1a
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto/16 :goto_0

    .line 173
    :pswitch_1b
    const/16 v0, 0x79

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto/16 :goto_0

    .line 176
    :pswitch_1c
    const/16 v0, 0x7a

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto/16 :goto_0

    .line 179
    :pswitch_1d
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->setResult(I)V

    goto/16 :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0055
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method protected onViewCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-static {}, Lcom/acloud/AppManager;->getAppManager()Lcom/acloud/AppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acloud/AppManager;->addActivity(Landroid/app/Activity;)V

    .line 32
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->initView()V

    .line 33
    invoke-direct {p0}, Lcom/acloud/stub/localmusic/ui/activity/ACT_Search;->initData()V

    .line 34
    return-void
.end method
