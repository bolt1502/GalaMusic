.class public interface abstract Lcom/acloud/ui/view/AdapterView$OnItemSelectedListener;
.super Ljava/lang/Object;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acloud/ui/view/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemSelectedListener"
.end annotation


# virtual methods
.method public abstract onItemSelected(Lcom/acloud/ui/view/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/acloud/ui/view/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public abstract onNothingSelected(Lcom/acloud/ui/view/AdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/acloud/ui/view/AdapterView",
            "<*>;)V"
        }
    .end annotation
.end method
