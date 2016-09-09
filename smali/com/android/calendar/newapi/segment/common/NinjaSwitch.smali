.class public Lcom/android/calendar/newapi/segment/common/NinjaSwitch;
.super Landroid/widget/Switch;
.source "NinjaSwitch.java"


# instance fields
.field private mStealth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->mStealth:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->mStealth:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->mStealth:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->mStealth:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/segment/common/NinjaSwitch;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->mStealth:Z

    return v0
.end method


# virtual methods
.method public setCheckedStealthily(Z)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->mStealth:Z

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->setChecked(Z)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->mStealth:Z

    .line 42
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Lcom/android/calendar/newapi/segment/common/NinjaSwitch$1;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/newapi/segment/common/NinjaSwitch$1;-><init>(Lcom/android/calendar/newapi/segment/common/NinjaSwitch;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    return-void
.end method
