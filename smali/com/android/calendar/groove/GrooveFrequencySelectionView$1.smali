.class Lcom/android/calendar/groove/GrooveFrequencySelectionView$1;
.super Ljava/lang/Object;
.source "GrooveFrequencySelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveFrequencySelectionView;->setClickListener(Landroid/widget/Button;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveFrequencySelectionView;

.field final synthetic val$frequency:I


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveFrequencySelectionView;I)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveFrequencySelectionView$1;->this$0:Lcom/android/calendar/groove/GrooveFrequencySelectionView;

    iput p2, p0, Lcom/android/calendar/groove/GrooveFrequencySelectionView$1;->val$frequency:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveFrequencySelectionView$1;->this$0:Lcom/android/calendar/groove/GrooveFrequencySelectionView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/groove/GrooveFrequencySelectionView$Listener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveFrequencySelectionView$1;->this$0:Lcom/android/calendar/groove/GrooveFrequencySelectionView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveFrequencySelectionView$Listener;

    iget v1, p0, Lcom/android/calendar/groove/GrooveFrequencySelectionView$1;->val$frequency:I

    invoke-interface {v0, v1}, Lcom/android/calendar/groove/GrooveFrequencySelectionView$Listener;->onFrequencySelectionComplete(I)V

    .line 48
    :cond_0
    return-void
.end method
