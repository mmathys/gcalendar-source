.class public Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "VisibilityEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment$Listener;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mTile:Lcom/android/calendar/newapi/view/TextTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment$Listener;->onVisibilityClicked()V

    .line 49
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/common/EditSegment;->onFinishInflate()V

    .line 38
    sget v0, Lcom/android/calendar/R$id;->visibility_tile:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;->mTile:Lcom/android/calendar/newapi/view/TextTileView;

    .line 39
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;->mTile:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/visibility/VisibilityEditSegment;->mTile:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 44
    return-void
.end method
