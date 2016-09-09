.class public Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;
.super Lcom/android/calendar/event/edit/segment/BaseChipSpan;
.source "QuickCreateChipSpan.java"

# interfaces
.implements Lcom/google/android/calendar/event/edit/segment/QuickCreateTermSpan;


# instance fields
.field private final mAnnotationFragment:Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->mLabel:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 24
    iput-object p4, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->mAnnotationFragment:Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 25
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getChipText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getFragment()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateChipSpan;->mAnnotationFragment:Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    return-object v0
.end method
