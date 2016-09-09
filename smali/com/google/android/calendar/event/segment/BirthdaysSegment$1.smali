.class Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;
.super Ljava/lang/Object;
.source "BirthdaysSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/segment/BirthdaysSegment;->refreshScreen(Lcom/android/calendar/timely/TimelineBirthday;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/segment/BirthdaysSegment;

.field final synthetic val$person:Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/segment/BirthdaysSegment;Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;->this$0:Lcom/google/android/calendar/event/segment/BirthdaysSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;->val$person:Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;->this$0:Lcom/google/android/calendar/event/segment/BirthdaysSegment;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;->this$0:Lcom/google/android/calendar/event/segment/BirthdaysSegment;

    .line 151
    invoke-virtual {v1}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;->this$0:Lcom/google/android/calendar/event/segment/BirthdaysSegment;

    .line 152
    invoke-virtual {v2}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_category_event_action:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tap_person_bday"

    .line 151
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;->this$0:Lcom/google/android/calendar/event/segment/BirthdaysSegment;

    # getter for: Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->access$000(Lcom/google/android/calendar/event/segment/BirthdaysSegment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;->val$person:Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;

    iget-object v2, p0, Lcom/google/android/calendar/event/segment/BirthdaysSegment$1;->this$0:Lcom/google/android/calendar/event/segment/BirthdaysSegment;

    # getter for: Lcom/google/android/calendar/event/segment/BirthdaysSegment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->access$100(Lcom/google/android/calendar/event/segment/BirthdaysSegment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/calendar/event/segment/BirthdaysSegment;->showContact(Landroid/content/Context;Landroid/view/View;Lcom/android/calendar/timely/TimelineBirthday$BirthdayInfo;Landroid/app/Activity;)V

    .line 156
    return-void
.end method
