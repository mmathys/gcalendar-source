.class public Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;
.super Landroid/app/DialogFragment;
.source "CalendarEditSegment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/CalendarEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarPickerDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;,
        Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;

.field private mWidthInPixels:I

.field private mWriteableCalendarMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 191
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mWriteableCalendarMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mListener:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mWidthInPixels:I

    return v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 210
    new-instance v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$1;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->getTheme()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$1;-><init>(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;Landroid/content/Context;I)V

    .line 218
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 219
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 233
    sget v0, Lcom/android/calendar/R$layout;->edit_segment_calendar_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 234
    sget v0, Lcom/android/calendar/R$id;->calendar_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mList:Landroid/widget/ListView;

    .line 235
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 236
    new-instance v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;-><init>(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mAdapter:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;

    .line 237
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mAdapter:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    return-object v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 174
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 175
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mAdapter:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->onClick(Landroid/view/View;)V

    .line 178
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 225
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 226
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 227
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mWidthInPixels:I

    .line 228
    return-void
.end method

.method public setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mListener:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;

    .line 205
    return-object p0
.end method

.method public setVisibleWriteableCalendarsMap(Ljava/util/Map;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)",
            "Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;"
        }
    .end annotation

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mWriteableCalendarMap:Ljava/util/Map;

    .line 196
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mAdapter:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mAdapter:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->setData()V

    .line 199
    :cond_0
    return-object p0
.end method
