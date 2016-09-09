.class Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;
.super Ljava/lang/Object;
.source "TimePickerCompat.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/time/TimePickerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultTimeSetListenerWrapper"
.end annotation


# instance fields
.field private mWrappee:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;->mWrappee:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    .line 134
    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimeSetListenerWrapper;->mWrappee:Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;

    invoke-interface {v0, p2, p3}, Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;->onTimeSet(II)V

    .line 139
    return-void
.end method
