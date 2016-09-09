.class public Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "TimelyHolidaysEditSegment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mAccountName:Landroid/widget/TextView;

.field private mCountryHolidays:Landroid/widget/TextView;

.field private mCountryHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

.field private mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

.field private mReligiousHolidays:Landroid/widget/TextView;

.field private mReligiousHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

.field private mSubscribedCountryCalendarPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribedReligiousCalendarPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 57
    const-class v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 59
    instance-of v0, p1, Landroid/app/Activity;

    const-string v1, "Expected activity got %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;)Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    return-object v0
.end method

.method private applySelectedHolidayNames()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mCountryHolidays:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mCountryHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mSubscribedCountryCalendarPredicate:Lcom/google/common/base/Predicate;

    sget v3, Lcom/android/calendar/R$string;->country_holidays_hint:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->setLabel(Landroid/widget/TextView;Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;Lcom/google/common/base/Predicate;I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mReligiousHolidays:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mReligiousHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mSubscribedReligiousCalendarPredicate:Lcom/google/common/base/Predicate;

    sget v3, Lcom/android/calendar/R$string;->religious_holidays_hint:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->setLabel(Landroid/widget/TextView;Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;Lcom/google/common/base/Predicate;I)V

    .line 199
    return-void
.end method

.method private restoreStateOverlay(Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    return-void

    .line 175
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    invoke-static {v0}, Lcom/google/calendar/v2/client/shared/model/CalendarKeySerializer;->deserialize(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private restoreStateOverlayFromBundle(Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 164
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 163
    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->restoreStateOverlay(Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 166
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 165
    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->restoreStateOverlay(Ljava/util/Map;Ljava/util/List;Ljava/lang/Boolean;)V

    .line 167
    return-void
.end method

.method private saveStateOverlay(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-static {v1}, Lcom/google/calendar/v2/client/shared/model/CalendarKeySerializer;->serialize(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 138
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 140
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setLabel(Landroid/widget/TextView;Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;Lcom/google/common/base/Predicate;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->getData()Ljava/util/List;

    move-result-object v2

    .line 204
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 205
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;

    .line 209
    invoke-interface {p3, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move v1, v0

    .line 204
    goto :goto_0

    .line 205
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .line 214
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(I)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$style;->Preference_Edit_Item_NoData:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 222
    :goto_3
    return-void

    .line 218
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->calendar_name_separator:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$style;->Preference_Edit_Item:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3
.end method

.method private showDialog(ILcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p2, p3}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->resetStateOverlay(Ljava/util/Map;)V

    .line 255
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->done_dialog_button:I

    .line 258
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 261
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 262
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 264
    invoke-virtual {p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->getIndexOfFirstSelectedCalendar()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 265
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;)Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    check-cast p2, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 271
    check-cast p1, Landroid/app/AlertDialog;

    .line 273
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    .line 274
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mCountryHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    invoke-virtual {v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingCountryChanges()Ljava/util/Map;

    move-result-object v1

    .line 277
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 278
    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->getStateOverlay()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 279
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->applySelectedHolidayNames()V

    .line 280
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    invoke-virtual {v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingReligiousChanges()Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 243
    sget v1, Lcom/android/calendar/R$id;->country_holidays:I

    if-ne v0, v1, :cond_1

    .line 244
    sget v0, Lcom/android/calendar/R$string;->country_holidays_section_title:I

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mCountryHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    .line 245
    invoke-virtual {v2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingCountryChanges()Ljava/util/Map;

    move-result-object v2

    .line 244
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->showDialog(ILcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;Ljava/util/Map;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->religious_holidays:I

    if-ne v0, v1, :cond_0

    .line 247
    sget v0, Lcom/android/calendar/R$string;->religious_holidays_section_title:I

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mReligiousHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    .line 248
    invoke-virtual {v2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingReligiousChanges()Ljava/util/Map;

    move-result-object v2

    .line 247
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->showDialog(ILcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p2, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 68
    sget v0, Lcom/android/calendar/R$id;->account:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mAccountName:Landroid/widget/TextView;

    .line 69
    sget v0, Lcom/android/calendar/R$id;->country_holidays:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mCountryHolidays:Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/android/calendar/R$id;->religious_holidays:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mReligiousHolidays:Landroid/widget/TextView;

    .line 71
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$1;-><init>(Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mSubscribedCountryCalendarPredicate:Lcom/google/common/base/Predicate;

    .line 85
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$2;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$2;-><init>(Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mSubscribedReligiousCalendarPredicate:Lcom/google/common/base/Predicate;

    .line 99
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;-><init>(Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$1;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mCountryHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    .line 100
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;-><init>(Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$1;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mReligiousHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mCountryHolidays:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mReligiousHolidays:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v2

    .line 152
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingCountryChanges()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".ca"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v1, ".cr"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->restoreStateOverlayFromBundle(Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingReligiousChanges()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".ra"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, ".ra"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->restoreStateOverlayFromBundle(Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 155
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".ca"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v1, ".cr"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    .line 115
    invoke-virtual {v3}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingCountryChanges()Ljava/util/Map;

    move-result-object v3

    .line 112
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->saveStateOverlay(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ".ra"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, ".ra"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    .line 119
    invoke-virtual {v2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingReligiousChanges()Ljava/util/Map;

    move-result-object v2

    .line 116
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->saveStateOverlay(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 116
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;)V
    .locals 2

    .prologue
    .line 186
    iput-object p2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    .line 187
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mCountryHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    invoke-virtual {p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getAllCountryHolidayCalendars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->setData(Ljava/util/List;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->mReligiousHolidaysAdapter:Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;

    invoke-virtual {p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getAllReligiousHolidayCalendars()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment$CalendarInfoAdapter;->setData(Ljava/util/List;)V

    .line 191
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->applySelectedHolidayNames()V

    .line 192
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p2, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidaysEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;)V

    return-void
.end method
