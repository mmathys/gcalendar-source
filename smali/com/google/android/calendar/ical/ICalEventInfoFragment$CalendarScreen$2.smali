.class Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$2;
.super Ljava/lang/Object;
.source "ICalEventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$2;->this$1:Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$2;->this$1:Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    # invokes: Lcom/google/android/calendar/ical/ICalEventInfoFragment;->doClickImportOrUpdateEvent()V
    invoke-static {v0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->access$400(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)V

    .line 264
    return-void
.end method
