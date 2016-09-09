.class Lcom/android/calendar/timely/DayPopUpFragment$1;
.super Lcom/android/calendar/OverlayFragment$OverlayDialog;
.source "DayPopUpFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/DayPopUpFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/DayPopUpFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/DayPopUpFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/calendar/timely/DayPopUpFragment$1;->this$0:Lcom/android/calendar/timely/DayPopUpFragment;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/OverlayFragment$OverlayDialog;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/calendar/timely/DayPopUpFragment$1;->this$0:Lcom/android/calendar/timely/DayPopUpFragment;

    # invokes: Lcom/android/calendar/timely/DayPopUpFragment;->getOverlayView()Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/timely/DayPopUpFragment;->access$000(Lcom/android/calendar/timely/DayPopUpFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->day_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/calendar/timely/DayPopUpFragment$1;->this$0:Lcom/android/calendar/timely/DayPopUpFragment;

    sget v2, Lcom/android/calendar/R$string;->showing_view:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/timely/DayPopUpFragment$1;->this$0:Lcom/android/calendar/timely/DayPopUpFragment;

    sget v6, Lcom/android/calendar/R$string;->day_view:I

    .line 293
    invoke-virtual {v5, v6}, Lcom/android/calendar/timely/DayPopUpFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/timely/DayPopUpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 296
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
