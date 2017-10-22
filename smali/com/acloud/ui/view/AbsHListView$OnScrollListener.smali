.class public interface abstract Lcom/acloud/ui/view/AbsHListView$OnScrollListener;
.super Ljava/lang/Object;
.source "AbsHListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/AbsHListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# virtual methods
.method public abstract onScroll(Lcom/acloud/ui/view/AbsHListView;III)V
.end method

.method public abstract onScrollStateChanged(Lcom/acloud/ui/view/AbsHListView;I)V
.end method
