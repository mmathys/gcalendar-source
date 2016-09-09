.class public Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "HomeTimezoneEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;"
    }
.end annotation


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mTimezoneButton:Landroid/widget/TextView;

.field private mTimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTzPickerUtils:Lcom/android/timezonepicker/TimeZonePickerUtils;

.field private mUseDeviceTimezoneSwitch:Landroid/widget/Switch;

.field private mUseDevicetimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 89
    const-class v0, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 60
    new-instance v0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$1;-><init>(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mUseDevicetimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 78
    new-instance v0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$2;-><init>(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mApplicationContext:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mUseDeviceTimezoneSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTimezoneButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->getTimezoneName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getTimezoneName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTzPickerUtils:Lcom/android/timezonepicker/TimeZonePickerUtils;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/android/timezonepicker/TimeZonePickerUtils;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/timezonepicker/TimeZonePickerUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTzPickerUtils:Lcom/android/timezonepicker/TimeZonePickerUtils;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTzPickerUtils:Lcom/android/timezonepicker/TimeZonePickerUtils;

    iget-object v2, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mApplicationContext:Landroid/content/Context;

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v3, p1

    .line 199
    invoke-virtual/range {v1 .. v6}, Lcom/android/timezonepicker/TimeZonePickerUtils;->getGmtDisplayName(Landroid/content/Context;Ljava/lang/String;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 43
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 157
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v0, "bundle_event_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 165
    const-string v2, "bundle_event_time_zone"

    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;

    invoke-interface {v0}, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 168
    sget-object v0, Lcom/android/timezonepicker/TimeZonePickerDialog;->TAG:Ljava/lang/String;

    .line 169
    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZonePickerDialog;

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->dismiss()V

    .line 174
    :cond_0
    new-instance v0, Lcom/android/timezonepicker/TimeZonePickerDialog;

    invoke-direct {v0}, Lcom/android/timezonepicker/TimeZonePickerDialog;-><init>()V

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/timezonepicker/TimeZonePickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {v0, p0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->setOnTimeZoneSetListener(Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;)V

    .line 177
    sget-object v1, Lcom/android/timezonepicker/TimeZonePickerDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/timezonepicker/TimeZonePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mUseDevicetimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 134
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 136
    iput-object v2, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 137
    iput-object v2, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 138
    iput-object v2, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mApplicationContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 99
    sget v0, Lcom/android/calendar/R$id;->device_timezone_switch:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mUseDeviceTimezoneSwitch:Landroid/widget/Switch;

    .line 100
    sget v0, Lcom/android/calendar/R$id;->home_timezone:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTimezoneButton:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mUseDeviceTimezoneSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTimezoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;)V
    .locals 2

    .prologue
    .line 112
    invoke-interface {p2}, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;->mutableTimezone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 113
    invoke-interface {p2}, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;->mutableUseHomeTimezone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 115
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 116
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mUseDevicetimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 118
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mUseDevicetimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableUseDeviceTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTimezoneListener:Lcom/google/calendar/v2/client/service/common/Listener;

    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;

    invoke-interface {v0}, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/android/timezonepicker/TimeZonePickerDialog;->TAG:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZonePickerDialog;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->setOnTimeZoneSetListener(Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;)V

    return-void
.end method

.method public onTimeZoneSet(Lcom/android/timezonepicker/TimeZoneInfo;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    return-void
.end method
