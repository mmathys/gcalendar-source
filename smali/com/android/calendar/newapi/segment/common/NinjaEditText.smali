.class public Lcom/android/calendar/newapi/segment/common/NinjaEditText;
.super Landroid/widget/EditText;
.source "NinjaEditText.java"


# instance fields
.field private mStealth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/segment/common/NinjaEditText;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z

    return v0
.end method


# virtual methods
.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/newapi/segment/common/NinjaEditText$1;-><init>(Lcom/android/calendar/newapi/segment/common/NinjaEditText;Landroid/text/TextWatcher;)V

    invoke-super {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    return-void
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setTextStealthily(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/common/NinjaEditText;->mStealth:Z

    .line 39
    return-void
.end method
