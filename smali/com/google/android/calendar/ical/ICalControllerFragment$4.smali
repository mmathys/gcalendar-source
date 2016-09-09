.class Lcom/google/android/calendar/ical/ICalControllerFragment$4;
.super Ljava/lang/Object;
.source "ICalControllerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalControllerFragment;->showCalendarPicker(Lcom/google/common/base/Predicate;Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

.field final synthetic val$picker:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$4;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$4;->val$picker:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$4;->val$picker:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$4;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    invoke-virtual {v1}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 796
    return-void
.end method
