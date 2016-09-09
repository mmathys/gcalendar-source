.class Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "TimelyHolidaysEditSegment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarInfoAdapter"
.end annotation


# instance fields
.field private final mCorpus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateOverlay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mStateOverlay:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$1;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;-><init>()V

    return-void
.end method

.method private applyCheckmark(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 337
    sget v0, Lcom/android/calendar/R$id;->checkmark:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 338
    sget v1, Lcom/android/calendar/R$id;->calendar_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_0

    .line 340
    sget v2, Lcom/android/calendar/R$style;->Preference_Option_Selected:I

    .line 339
    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 341
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    return-void

    .line 340
    :cond_0
    sget v2, Lcom/android/calendar/R$style;->Preference_Option:I

    goto :goto_0

    .line 341
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private isSubscribed(I)Z
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;

    .line 346
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mStateOverlay:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 347
    if-nez v1, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->isSubscribed()Z

    move-result v0

    .line 347
    :goto_0
    return v0

    .line 348
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    return-object v0
.end method

.method public getIndexOfFirstSelectedCalendar()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 375
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->isSubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    :goto_1
    return v1

    .line 375
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 380
    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 303
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStateOverlay()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mStateOverlay:Ljava/util/Map;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 308
    .line 309
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    if-nez p2, :cond_0

    .line 311
    sget v1, Lcom/android/calendar/R$layout;->edit_segment_holiday_calendar_item:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;

    .line 315
    sget v1, Lcom/android/calendar/R$id;->calendar_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 316
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->isSubscribed(I)Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->applyCheckmark(Landroid/view/View;Z)V

    .line 318
    return-object p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 325
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;

    .line 326
    invoke-direct {p0, p3}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->isSubscribed(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 328
    :goto_0
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->isSubscribed()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 329
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mStateOverlay:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :goto_1
    invoke-direct {p0, p2, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->applyCheckmark(Landroid/view/View;Z)V

    .line 334
    return-void

    .line 326
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mStateOverlay:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public resetStateOverlay(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mStateOverlay:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 389
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mStateOverlay:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 392
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->resetStateOverlay(Ljava/util/Map;)V

    .line 357
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 358
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->mCorpus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->notifyDataSetChanged()V

    .line 360
    return-void
.end method
