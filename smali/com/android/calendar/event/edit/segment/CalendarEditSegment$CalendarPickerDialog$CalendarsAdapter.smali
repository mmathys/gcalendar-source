.class Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;
.super Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;
.source "CalendarEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 244
    const/4 v0, 0x1

    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 244
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-direct {p0, p2, v3, v3, v0}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;-><init>(Landroid/content/Context;ZILjava/util/Set;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->setData()V

    .line 248
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 289
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 293
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->getItem(I)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 295
    sget v0, Lcom/android/calendar/R$id;->calendar_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mWidthInPixels:I
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->access$300(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 300
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 273
    instance-of v1, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 274
    check-cast v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 275
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->calendar_selected_accessibility:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->displayName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 277
    invoke-virtual {v1}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->getAccountName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 275
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mListener:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->access$200(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mWriteableCalendarMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->access$100(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)Ljava/util/Map;

    move-result-object v1

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    iget-object v0, v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 281
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mListener:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->access$200(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;->onCalendarSelected(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->dismiss()V

    .line 285
    :cond_1
    return-void
.end method

.method public setData()V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mWriteableCalendarMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->access$100(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    # getter for: Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->mWriteableCalendarMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->access$100(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 258
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->mLastItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 259
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;

    .line 260
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->mLastItems:Ljava/util/List;

    new-instance v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    invoke-direct {v4, v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;-><init>(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 262
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->mLastItems:Ljava/util/List;

    new-instance v4, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    invoke-direct {v4, v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;-><init>(Landroid/accounts/Account;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$CalendarsAdapter;->updateItemList()V

    goto :goto_0
.end method
