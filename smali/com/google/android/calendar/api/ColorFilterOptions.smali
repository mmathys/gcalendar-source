.class public Lcom/google/android/calendar/api/ColorFilterOptions;
.super Ljava/lang/Object;
.source "ColorFilterOptions.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mSelectedType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/api/ColorFilterOptions;->mSelectedType:I

    .line 28
    iput-object v1, p0, Lcom/google/android/calendar/api/ColorFilterOptions;->mAccountName:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/google/android/calendar/api/ColorFilterOptions;->mAccountType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorFilterOptions;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/calendar/api/ColorFilterOptions;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method getSelectedType()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/calendar/api/ColorFilterOptions;->mSelectedType:I

    return v0
.end method
