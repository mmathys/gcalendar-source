.class Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$5;
.super Ljava/lang/Object;
.source "DurationTimeframeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->requestSelectedButtonFocus(Landroid/widget/RadioGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

.field final synthetic val$group:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;Landroid/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$5;->this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    iput-object p2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$5;->val$group:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$5;->val$group:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$5;->val$group:Landroid/widget/RadioGroup;

    .line 330
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 331
    invoke-virtual {v0}, Landroid/widget/RadioButton;->requestFocus()Z

    .line 332
    invoke-static {v0}, Lcom/android/calendar/Utils;->requestAccessibilityFocus(Landroid/view/View;)V

    .line 333
    return-void
.end method
