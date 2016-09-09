.class public Lcom/android/calendar/event/ConferenceCallView;
.super Landroid/widget/TextView;
.source "ConferenceCallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;,
        Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/calendar/event/ConferenceCallView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/ConferenceCallView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/ConferenceCallView;)Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/calendar/event/ConferenceCallView;->mListener:Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;

    return-object v0
.end method


# virtual methods
.method public hasConferenceLink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/android/calendar/event/ConferenceCallView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, v1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 35
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Lcom/android/calendar/event/ConferenceCallSpan;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/ConferenceCallSpan;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 35
    goto :goto_0

    :cond_1
    move v0, v2

    .line 37
    goto :goto_0
.end method

.method public setConferenceNumberClickListener(Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/calendar/event/ConferenceCallView;->mListener:Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;

    .line 50
    return-void
.end method

.method public setTextIsSelectable(Z)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 45
    invoke-static {}, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/ConferenceCallView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 46
    return-void
.end method
