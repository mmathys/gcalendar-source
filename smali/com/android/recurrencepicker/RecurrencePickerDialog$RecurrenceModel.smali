.class Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
.super Ljava/lang/Object;
.source "RecurrencePickerDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/recurrencepicker/RecurrencePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecurrenceModel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field end:I

.field endCount:I

.field endDate:Landroid/text/format/Time;

.field freq:I

.field interval:I

.field monthlyByDayOfWeek:I

.field monthlyByMonthDay:I

.field monthlyByNthDayOfWeek:I

.field monthlyRepeat:I

.field recurrenceState:I

.field weeklyByDayOfWeek:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel$1;

    invoke-direct {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel$1;-><init>()V

    sput-object v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    .line 121
    iput v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    .line 142
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    .line 147
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    .line 197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 184
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    iget v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    iget-object v5, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    .line 186
    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    iget v7, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    iget v8, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByDayOfWeek:I

    iget v9, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit16 v11, v11, 0xf0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Model [freq="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", interval="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weeklyByDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthlyRepeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthlyByMonthDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthlyByDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", monthlyByNthDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 209
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByDayOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->recurrenceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    return-void
.end method
