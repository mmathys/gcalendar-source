.class Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$6;
.super Ljava/lang/Object;
.source "DurationTimeframeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->onDateSet(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$6;->this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$6;->this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->access$100(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$6;->this$0:Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    iget-object v2, v2, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 490
    return-void
.end method
