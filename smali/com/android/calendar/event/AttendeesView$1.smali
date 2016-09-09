.class Lcom/android/calendar/event/AttendeesView$1;
.super Ljava/lang/Object;
.source "AttendeesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/AttendeesView;->constructAttendeeView(Ljava/lang/String;Lcom/android/calendar/event/EditHelper$AttendeeItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/AttendeesView;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$item:Lcom/android/calendar/event/EditHelper$AttendeeItem;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/AttendeesView;Ljava/lang/String;Lcom/android/calendar/event/EditHelper$AttendeeItem;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    iput-object p2, p0, Lcom/android/calendar/event/AttendeesView$1;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/event/AttendeesView$1;->val$item:Lcom/android/calendar/event/EditHelper$AttendeeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    # getter for: Lcom/android/calendar/event/AttendeesView;->mDelegate:Lcom/android/calendar/event/AttendeesView$Delegate;
    invoke-static {v0}, Lcom/android/calendar/event/AttendeesView;->access$000(Lcom/android/calendar/event/AttendeesView;)Lcom/android/calendar/event/AttendeesView$Delegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    # getter for: Lcom/android/calendar/event/AttendeesView;->mDelegate:Lcom/android/calendar/event/AttendeesView$Delegate;
    invoke-static {v0}, Lcom/android/calendar/event/AttendeesView;->access$000(Lcom/android/calendar/event/AttendeesView;)Lcom/android/calendar/event/AttendeesView$Delegate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    invoke-interface {v0, v1}, Lcom/android/calendar/event/AttendeesView$Delegate;->shouldShowContactInfo(Lcom/android/calendar/event/AttendeesView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    # getter for: Lcom/android/calendar/event/AttendeesView;->mDelegate:Lcom/android/calendar/event/AttendeesView$Delegate;
    invoke-static {v0}, Lcom/android/calendar/event/AttendeesView;->access$000(Lcom/android/calendar/event/AttendeesView;)Lcom/android/calendar/event/AttendeesView$Delegate;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    iget-object v1, v1, Lcom/android/calendar/event/AttendeesView;->mAnalyticsCategory:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v1}, Lcom/android/calendar/event/AttendeesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    .line 157
    invoke-virtual {v2}, Lcom/android/calendar/event/AttendeesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    iget-object v3, v3, Lcom/android/calendar/event/AttendeesView;->mAnalyticsCategory:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    # getter for: Lcom/android/calendar/event/AttendeesView;->mDelegate:Lcom/android/calendar/event/AttendeesView$Delegate;
    invoke-static {v1}, Lcom/android/calendar/event/AttendeesView;->access$000(Lcom/android/calendar/event/AttendeesView;)Lcom/android/calendar/event/AttendeesView$Delegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/calendar/event/AttendeesView$Delegate;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView$1;->val$accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/event/AttendeesView$1;->val$item:Lcom/android/calendar/event/EditHelper$AttendeeItem;

    iget-object v3, v3, Lcom/android/calendar/event/EditHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 160
    invoke-virtual {v3}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getContactInfo()Lcom/android/calendar/timely/ContactInfo;

    move-result-object v3

    .line 159
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/UnifiedExtensions;->showSmartProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/timely/ContactInfo;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    # getter for: Lcom/android/calendar/event/AttendeesView;->mDelegate:Lcom/android/calendar/event/AttendeesView$Delegate;
    invoke-static {v0}, Lcom/android/calendar/event/AttendeesView;->access$000(Lcom/android/calendar/event/AttendeesView;)Lcom/android/calendar/event/AttendeesView$Delegate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView$1;->this$0:Lcom/android/calendar/event/AttendeesView;

    invoke-interface {v0, v1}, Lcom/android/calendar/event/AttendeesView$Delegate;->analyticsActionForShowContactInfo(Lcom/android/calendar/event/AttendeesView;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
