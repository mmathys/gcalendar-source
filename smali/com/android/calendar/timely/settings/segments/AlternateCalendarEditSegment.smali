.class public Lcom/android/calendar/timely/settings/segments/AlternateCalendarEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "AlternateCalendarEditSegment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 22
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/AlternateCalendarEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;)Z

    move-result v0

    return v0
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/AlternateCalendarEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 54
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/AlternateCalendarEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectAlternateCalendars;)V

    return-void
.end method
