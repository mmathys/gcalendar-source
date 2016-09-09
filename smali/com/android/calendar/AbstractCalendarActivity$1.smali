.class Lcom/android/calendar/AbstractCalendarActivity$1;
.super Ljava/lang/Object;
.source "AbstractCalendarActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AbstractCalendarActivity;->setCustomActionBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AbstractCalendarActivity;

.field final synthetic val$customActionBar:Landroid/view/View;

.field final synthetic val$textView:Landroid/widget/TextView;

.field final synthetic val$titleStartPadding:I


# direct methods
.method constructor <init>(Lcom/android/calendar/AbstractCalendarActivity;Landroid/view/View;ILandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/calendar/AbstractCalendarActivity$1;->this$0:Lcom/android/calendar/AbstractCalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/AbstractCalendarActivity$1;->val$customActionBar:Landroid/view/View;

    iput p3, p0, Lcom/android/calendar/AbstractCalendarActivity$1;->val$titleStartPadding:I

    iput-object p4, p0, Lcom/android/calendar/AbstractCalendarActivity$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 541
    iget-object v1, p0, Lcom/android/calendar/AbstractCalendarActivity$1;->val$customActionBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 542
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 543
    const/4 v0, 0x1

    .line 552
    :cond_0
    :goto_0
    return v0

    .line 545
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 546
    iget-object v1, p0, Lcom/android/calendar/AbstractCalendarActivity$1;->val$customActionBar:Landroid/view/View;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getStartCoordinate(Landroid/view/View;)I

    move-result v1

    .line 548
    iget v2, p0, Lcom/android/calendar/AbstractCalendarActivity$1;->val$titleStartPadding:I

    if-ge v1, v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/android/calendar/AbstractCalendarActivity$1;->val$textView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/calendar/AbstractCalendarActivity$1;->val$titleStartPadding:I

    sub-int v1, v3, v1

    invoke-virtual {v2, v1, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_0
.end method
