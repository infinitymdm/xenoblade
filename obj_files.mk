TEXT_O_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/memcpy.o \
	$(BUILD_DIR)/asm/Dolphin/mem_TRK.o \
	$(BUILD_DIR)/asm/Dolphin/__mem.o \
	$(BUILD_DIR)/asm/Dolphin/__exception.o \
	$(BUILD_DIR)/asm/text_main.o \
	$(BUILD_DIR)/src/main.o \
	$(BUILD_DIR)/asm/text.o \
	$(BUILD_DIR)/asm/sbss.o \
	$(BUILD_DIR)/asm/text_2.o \
	$(BUILD_DIR)/src/Dolphin/__start.o \
	$(BUILD_DIR)/asm/sbss_1.o \
	$(BUILD_DIR)/asm/text_3.o \
	$(BUILD_DIR)/src/code_802AEB74.o \
	$(BUILD_DIR)/asm/text_3_1.o \
	$(BUILD_DIR)/asm/text/printf.o \
	$(BUILD_DIR)/asm/text_4.o \
	$(BUILD_DIR)/asm/text_5.o \
	$(BUILD_DIR)/asm/PPCArch.o \
	$(BUILD_DIR)/asm/text_5_1.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdfs.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvd.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdqueue.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvderror.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdidutils.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdFatal.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdDeviceError.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvd_broadway.o \
	$(BUILD_DIR)/asm/text_5_2.o \
	$(BUILD_DIR)/asm/text_5_3.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OS.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSAlarm.o \
	$(BUILD_DIR)/asm/Dolphin/OS/func_803535D0.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSAlloc.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSArena.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSAudioSystem.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSCache.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSContext.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSError.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSExec.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSFatal.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSFont.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSInterrupt.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSMessage.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSMemory.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSMutex.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSReboot.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSReset.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSRtc.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSSync.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSThread.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSTime.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSUtf.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSIpc.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSStateTM.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSPlayRecord.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSStateFlags.o \
	$(BUILD_DIR)/asm/Dolphin/OS/OSNet.o \
	$(BUILD_DIR)/asm/code_8035E1F0.o \
	$(BUILD_DIR)/asm/Dolphin/__ppc_eabi_init.o \
	$(BUILD_DIR)/asm/Dolphin/Pad.o \
	$(BUILD_DIR)/asm/text_6.o \
	$(BUILD_DIR)/asm/text_7.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_rescommon.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resdict.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resfile.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resmdl.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resshp.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_restev.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resmat.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resvtx.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_restex.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resnode.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resanm.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmclr.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmtexpat.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmtexsrt.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmchr.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmamblight.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmlight.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmfog.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmcamera.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmscn.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_resanmshp.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_anmclr.o \
	$(BUILD_DIR)/asm/nw4r/g3d/code_803E3398.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_anmscn.o \
	$(BUILD_DIR)/asm/nw4r/g3d/g3d_obj.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_anmobj.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_gpu.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_cpu.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_state.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_draw1mat1shp.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_calcview.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_dcc.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_workmem.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_calcworld.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_draw.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_camera.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_basic.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_maya.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_xsi.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_3dsmax.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_scnobj.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_scnroot.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_scnmdlsmpl.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_scnmdl.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_scnmdlexpand.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_calcmaterial.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_init.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_scnproc.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_fog.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_light.o \
    $(BUILD_DIR)/asm/nw4r/g3d/g3d_calcvtx.o \
	$(BUILD_DIR)/asm/text_7_1.o \
	$(BUILD_DIR)/asm/nw4r/math/math_arithmetic.o \
	$(BUILD_DIR)/asm/nw4r/math/math_triangular.o \
	$(BUILD_DIR)/asm/nw4r/math/math_types.o \
	$(BUILD_DIR)/asm/nw4r/math/math_geometry.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_AxManager.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_AxVoice.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_AxVoiceManager.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_AxfxImpl.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_Bank.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_BankFile.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_BasicPlayer.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_BasicSound.o \
	$(BUILD_DIR)/asm/nw4r/snd/code_80413B14.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_DisposeCallbackManager.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_EnvGenerator.o \
    $(BUILD_DIR)/asm/nw4r/snd/code_80415760.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_InstancePool.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_Lfo.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_MemorySoundArchive.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_MidiSeqPlayer.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_MmlParser.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_MmlSeqTrack.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_MmlSeqTrackAllocator.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_NandSoundArchive.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_RemoteSpeaker.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_RemoteSpeakerManager.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SeqFile.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SeqPlayer.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SeqSound.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SeqSoundHandle.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SeqTrack.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchive.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchiveFile.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SoundArchivePlayer.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SoundHandle.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SoundPlayer.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SoundStartable.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SoundSystem.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_SoundThread.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_StrmChannel.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_StrmFile.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_StrmPlayer.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_StrmSound.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_StrmSoundHandle.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_Task.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_TaskManager.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_TaskThread.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_Voice.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_VoiceManager.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_Util.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_WaveFile.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_WaveSound.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_WaveSoundHandle.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_WsdFile.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_WsdPlayer.o \
    $(BUILD_DIR)/asm/nw4r/snd/snd_adpcm.o \
	$(BUILD_DIR)/asm/text_8.o \
	$(BUILD_DIR)/asm/text_9.o

EXTAB_O_FILES :=\
	$(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=\
	$(BUILD_DIR)/asm/extabindex.o

CTORS_O_FILES :=\
	$(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=\
	$(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=\
	$(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=\
	$(BUILD_DIR)/asm/data.o

BSS_O_FILES :=\
	$(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=\
    $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES :=

SDATA2_O_FILES :=\
    $(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=\
    $(BUILD_DIR)/asm/sbss2.o