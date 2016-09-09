.class Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;
.super Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;
.source "RecurrenceEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecurrenceAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    .line 333
    invoke-direct {p0, p2, p3}, Lcom/android/calendar/event/edit/segment/EditSpinnerTextAdapter;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    .line 334
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mDefaultRecurrences:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    .line 339
    # invokes: Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->customRecurrenceSize()I
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 338
    return v0
.end method

.method public getItem(I)Lcom/android/calendarcommon2/EventRecurrence;
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->customRecurrenceSize()I
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 347
    :cond_0
    const/4 v0, 0x0

    .line 351
    :goto_0
    return-object v0

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->customRecurrenceSize()I
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mCustomRecurrence:Lcom/android/calendarcommon2/EventRecurrence;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->access$200(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)Lcom/android/calendarcommon2/EventRecurrence;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mDefaultRecurrences:Ljava/util/List;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->customRecurrenceSize()I
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendarcommon2/EventRecurrence;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->getItem(I)Lcom/android/calendarcommon2/EventRecurrence;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 357
    int-to-long v0, p1

    return-wide v0
.end method

.method public getTextAtPosition(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mRecurrencePickerString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->access$300(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->mNoRecurrenceString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->access$400(Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;)Ljava/lang/String;

    move-result-object v0

    .line 371
    :cond_0
    return-object v0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->this$0:Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/RecurrenceEditSegment$RecurrenceAdapter;->getItem(I)Lcom/android/calendarcommon2/EventRecurrence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getRecurrenceDisplayString(Landroid/content/Context;Lcom/android/calendarcommon2/EventRecurrence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
