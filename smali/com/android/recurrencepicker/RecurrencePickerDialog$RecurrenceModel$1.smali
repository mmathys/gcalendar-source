.class final Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel$1;
.super Ljava/lang/Object;
.source "RecurrencePickerDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    invoke-direct {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    .line 224
    iget-object v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->year:I

    .line 225
    iget-object v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 226
    iget-object v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    .line 228
    const/4 v1, 0x7

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    .line 229
    iget-object v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByDayOfWeek:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->recurrenceState:I

    .line 235
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    .locals 1

    .prologue
    .line 240
    new-array v0, p1, [Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel$1;->newArray(I)[Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    move-result-object v0

    return-object v0
.end method
