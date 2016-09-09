.class Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$1;
.super Ljava/lang/Object;
.source "GroovePreferredTimesSelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->setClickListener(Landroid/widget/Button;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;

.field final synthetic val$preferredTimes:I


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;I)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$1;->this$0:Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;

    iput p2, p0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$1;->val$preferredTimes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$1;->this$0:Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$Listener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$1;->this$0:Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$Listener;

    iget v1, p0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$1;->val$preferredTimes:I

    invoke-interface {v0, v1}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView$Listener;->onPreferredTimesSelectionComplete(I)V

    .line 46
    :cond_0
    return-void
.end method
