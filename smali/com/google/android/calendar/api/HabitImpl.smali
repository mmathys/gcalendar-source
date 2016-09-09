.class public Lcom/google/android/calendar/api/HabitImpl;
.super Ljava/lang/Object;
.source "HabitImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/Habit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/HabitImpl$Modification;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/HabitImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mColorOverride:Lcom/google/android/calendar/api/ColorDescriptor;

.field private final mContract:Lcom/google/android/calendar/api/HabitContract;

.field private final mDeletionStatus:I

.field private final mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

.field private final mFingerprint:Ljava/lang/String;

.field private final mReminders:Lcom/google/android/calendar/api/HabitReminders;

.field private final mSummary:Ljava/lang/String;

.field private final mType:I

.field private final mVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 508
    new-instance v0, Lcom/google/android/calendar/api/HabitImpl$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/HabitImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/HabitImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/ColorDescriptor;Lcom/google/android/calendar/api/HabitContract;Lcom/google/android/calendar/api/HabitReminders;III)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 41
    iput-object p2, p0, Lcom/google/android/calendar/api/HabitImpl;->mFingerprint:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/google/android/calendar/api/HabitImpl;->mSummary:Ljava/lang/String;

    .line 43
    if-eqz p4, :cond_0

    .line 44
    invoke-virtual {p4}, Lcom/google/android/calendar/api/ColorDescriptor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 45
    invoke-virtual {p4}, Lcom/google/android/calendar/api/ColorDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 43
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 46
    iput-object p4, p0, Lcom/google/android/calendar/api/HabitImpl;->mColorOverride:Lcom/google/android/calendar/api/ColorDescriptor;

    .line 47
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitContract;

    iput-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mContract:Lcom/google/android/calendar/api/HabitContract;

    .line 48
    iput-object p6, p0, Lcom/google/android/calendar/api/HabitImpl;->mReminders:Lcom/google/android/calendar/api/HabitReminders;

    .line 49
    iput p7, p0, Lcom/google/android/calendar/api/HabitImpl;->mType:I

    .line 50
    iput p8, p0, Lcom/google/android/calendar/api/HabitImpl;->mDeletionStatus:I

    .line 51
    iput p9, p0, Lcom/google/android/calendar/api/HabitImpl;->mVisibility:I

    .line 52
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mColorOverride:Lcom/google/android/calendar/api/ColorDescriptor;

    return-object v0
.end method

.method public getContract()Lcom/google/android/calendar/api/HabitContract;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mContract:Lcom/google/android/calendar/api/HabitContract;

    return-object v0
.end method

.method public getDeletionStatus()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mDeletionStatus:I

    return v0
.end method

.method public getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Lcom/google/android/calendar/api/HabitReminders;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mReminders:Lcom/google/android/calendar/api/HabitReminders;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mType:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mVisibility:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitImpl;->mFingerprint:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/calendar/api/HabitImpl;->mSummary:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/api/HabitImpl;->mColorOverride:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/calendar/api/HabitImpl;->mContract:Lcom/google/android/calendar/api/HabitContract;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/calendar/api/HabitImpl;->mReminders:Lcom/google/android/calendar/api/HabitReminders;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/google/android/calendar/api/HabitImpl;->mType:I

    iget v7, p0, Lcom/google/android/calendar/api/HabitImpl;->mDeletionStatus:I

    iget v8, p0, Lcom/google/android/calendar/api/HabitImpl;->mVisibility:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit16 v10, v10, 0xa8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "HabitImpl{mDescriptor="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", mFingerprint=\'"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSummary=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mColorOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContract="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReminders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 498
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mColorOverride:Lcom/google/android/calendar/api/ColorDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 501
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mContract:Lcom/google/android/calendar/api/HabitContract;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 502
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mReminders:Lcom/google/android/calendar/api/HabitReminders;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 503
    iget v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mDeletionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget v0, p0, Lcom/google/android/calendar/api/HabitImpl;->mVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    return-void
.end method
