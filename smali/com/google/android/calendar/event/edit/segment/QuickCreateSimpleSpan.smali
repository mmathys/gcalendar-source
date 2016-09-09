.class public Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;
.super Landroid/text/style/TextAppearanceSpan;
.source "QuickCreateSimpleSpan.java"

# interfaces
.implements Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;


# instance fields
.field private final mAnnotationFragment:Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/android/calendar/R$style;->QuickCreateTermTextAppearance:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;-><init>(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;->mAnnotationFragment:Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 29
    return-void
.end method


# virtual methods
.method public getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateSimpleSpan;->mAnnotationFragment:Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    return-object v0
.end method
